app.controller("product-ctrl", function ($scope, $http) {
	$scope.items = [];
	$scope.cates = [];
	$scope.form = {};
	$scope.imageUrl = null;
	$scope.initialize = function () {
		$scope.nutupdate = false;
		$scope.nutthem = false;
		$http.get("/rest/products").then(resp => {
			$scope.items = resp.data;
			$scope.items.forEach(item => {
				item.datecreate = new Date(item.datecreate)
			});
		});
		$http.get("/rest/categories").then(resp => {
			$scope.cates = resp.data;

		});
	}

	$scope.initialize();
	$scope.reset = function () {
		$scope.nutthem = false;
		$scope.nutupdate = false;
		$scope.imageUrl = null;
		$scope.form = {
			image: ""
		}
	}

	$scope.edit = function (item) {
		$scope.form = angular.copy(item);
		$scope.nutthem = true;
		$scope.nutupdate = true;
		$(".nav-tabs button:eq(0)").tab('show')
	}

	$scope.create = function () {
		// $scope.form.image = 'index1';
		var item = angular.copy($scope.form);
		$http.post('/rest/products', item).then(resp => {
			resp.data.datecreate = new Date(resp.data.datecreate);
			// $scope.imageChanged(resp.data.productid);
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
				text: "Thêm thất bại vui lòng nhập thông tin đầy đủ",
				icon: "error",
				button: "OK!",
			});
			console.log("Error", error);
		})
	}

	$scope.update = function () {
		var item = angular.copy($scope.form);
		$http.put(`/rest/products/${item.productid}`, item).then(resp => {
			var index = $scope.items.findIndex(p => p.productid == item.productid);
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

	$scope.delete = function (item) {
		$http.delete(`/rest/products/${item.productid}`).then(resp => {
			var index = $scope.items.findIndex(p => p.productid == item.productid);
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
			if (this.page < 0) {
				this.last();
			}
		},
		next() {
			this.page++;
			if (this.page >= this.count) {
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
					$http.post('/rest/upload/products', formData, {
						transformRequest: angular.identity,
						headers: { 'Content-Type': undefined }
					}).then(resp => {
						// Xử lý phản hồi từ máy chủ (có thể trả về đường dẫn của hình ảnh đã tải lên)
						// $scope.imageUrl = resp.data.imageUrl;
						$scope.form.image = resp.data.name;
						console.log($scope.form.image);
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