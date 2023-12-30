app.controller("accountvip-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.form = {};
	$scope.role = [];
	$scope.imageUrl = null;
	$scope.initialize = function() {
		$scope.nutupdate = false;
		$scope.nutthem = false;
		$http.get("/rest/accounts?admin=true").then(resp => {
			$scope.items = resp.data;
		}).catch(error => {
            $location.path("/unauthorized");
        });
		$http.get("/rest/roles/nhanvien").then(resp => {
			$scope.role = resp.data;
		});
		
	}

	$scope.initialize();
	$scope.reset = function() {
		$scope.nutthem = false;
		$scope.nutupdate = false;
		$scope.imageUrl = null;
		$scope.form = {
			datecreate: new Date(),
			gender: ""
		}
	}

	$scope.edit = function(item) {
		$scope.nutthem = true;
		$scope.nutupdate = true;
		$scope.form = angular.copy(item);
		$(".nav-tabs button:eq(0)").tab('show')
	}

	$scope.create = function() {
		var item = angular.copy($scope.form);
		$http.post('/rest/accounts/nhanvien', item).then(resp => {
			$scope.items.push(resp.data);
			swal({
				title: "Thao tác",
				text: "Thêm thành công",
				icon: "success",
				button: "OK!",
			});
		
			$scope.reset();
			$scope.initialize();
		}).catch(error => {
			swal({
				title: "Thao tác",
				text: "Thêm thất bại",
				icon: "error",
				button: "OK!",
			});
			console.log("Error", error);
		})
	}

	$scope.update = function() {
		var item = angular.copy($scope.form);
		$http.put(`/rest/accounts/${item.username}`, item).then(resp => {
			var index = $scope.items.findIndex(p => p.username == item.username);
			$scope.items[index] = item;
			swal({
				title: "Thao tác",
				text: "Cập nhật thành công",
				icon: "success",
				button: "OK!",
			});
			
			$scope.reset();
			$scope.initialize();
		}).catch(error => {
			swal({
				title: "Thao tác",
				text: "Cập nhật thất bại",
				icon: "error",
				button: "OK!",
			});
			console.log("Error", error);
		})

	}

	$scope.delete = function(item) {
		$http.delete(`/rest/accounts/${item.username}`).then(resp => {
			var index = $scope.items.findIndex(p => p.username == item.username);
			$scope.items.splice(index, 1);
			$scope.reset();
			swal({
				title: "Thao tác",
				text: "Xóa thành công",
				icon: "success",
				button: "OK!",
			});
			$scope.initialize();
		}).catch(error => {
			swal({
				title: "Thao tác",
				text: "Xóa thất bại",
				icon: "error",
				button: "OK!",
			});
			console.log("Error", error);
		})
	}

	$scope.pager = {
		page: 0,
		size: 5,
		get items() {
			var start = this.page * this.size;
			return $scope.items.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
         first() {
			this.page = 0;
		},
		prev() {
			this.page--;
			if(this.page <0){
				this.last();
			}
		},
		next() {
			this.page++;
			if(this.page >= this.count){
				this.first();
			}
		},
		last() {
			this.page = this.count - 1;
		}
	}

	$scope.displayImage = function () {
		// var item = angular.copy($scope.form);
		var fileInput = document.getElementById('id_img_account');
		var file = fileInput.files[0];
		if (file) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$scope.$apply(function () {
					$scope.selectedImage = file; // Gán hình ảnh đã chọn vào biến $scope.selectedImage
					$scope.imageUrl = e.target.result;
					var formData = new FormData();
					formData.append('file', file);
					$http.post('/rest/upload/avatar', formData, {
						transformRequest: angular.identity,
						headers: { 'Content-Type': undefined }
					}).then(resp => {
						// Xử lý phản hồi từ máy chủ (có thể trả về đường dẫn của hình ảnh đã tải lên)
						// $scope.imageUrl = resp.data.imageUrl;
						$scope.form.photo = resp.data.name;
						console.log($scope.form.photo);
					}).catch(error => {
						swal({
							title: "Thao tác",
							text: "Lỗi hình ảnh",
							icon: "error",
							button: "OK!",
						});
						console.error('Lỗi tải lên hình ảnh', error);
					});
				});

			};
			reader.readAsDataURL(file);

		} else {
			$scope.selectedImage = null; // Đặt lại biến $scope.selectedImage nếu không có hình ảnh nào được chọn
			$scope.imageUrl = ''; // Đặt lại đường dẫn hình ảnh
		}
	};
})