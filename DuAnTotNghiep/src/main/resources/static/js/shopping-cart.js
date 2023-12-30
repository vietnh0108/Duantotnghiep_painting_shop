var app = angular.module("shopping-cart-app", []);
app.controller("shopping-cart-ctrl", function ($scope, $rootScope, $http) {
	$scope.pro = [];
	$scope.fullpro = [];
	$scope.view = {};
	$scope.sanpham = {};
	$scope.favorite = [];
	$scope.account = {};
	$rootScope.soluotfav = {};
	$scope.listCategory = [];
	$scope.listFavorite = [];
	$rootScope.categorylist = '';

	$scope.pagecategory1 = {
		page: 0,
		size: 7,
		get items() {
			var start = this.page * this.size;
			return $scope.listCategory.slice(start, start + this.size);
		}
	}
	$scope.pagecategory2 = {
		page: 1,
		size: 7,
		get items() {
			var start = this.page * this.size;
			return $scope.listCategory.slice(start, start + this.size);
		}
	}
	$scope.pagecategory3 = {
		page: 2,
		size: 7,
		get items() {
			var start = this.page * this.size;
			return $scope.listCategory.slice(start, start + this.size);
		}
	}
	$scope.pagecategory4 = {
		page: 3,
		size: 7,
		get items() {
			var start = this.page * this.size;
			return $scope.listCategory.slice(start, start + this.size);
		}
	}

	
	
	$scope.shopcategory = function (id) {
		window.location.href = '/product/list'
		// var json = JSON.stringify(angular.copy(id));
		localStorage.setItem("idcategory", id);
	}
	//lấy API từ BILL
	$scope.getListOrder = function () {
		$http.get(`/rest/order/getbyuser/${$("#userremost").text()}`).then(resp => {
			$scope.listOrder = resp.data;
		}).catch(error => {
			$scope.account = null;
		});
	}
	$scope.getProductCate = function (id) {
		localStorage.setItem("idcategory", id);
		if (id != null) {
			$http.get(`/rest/products/category/${id}`).then(resp => {
				$scope.pro = resp.data;
			})
		} else {
			$http.get("/rest/products").then(resp => {
				$scope.pro = resp.data;
			});
		}
	}
	$scope.getProductinCate = function () {
		var id = localStorage.getItem("idcategory");
		// var item = id ? JSON.parse(id) : [];
		console.log(id);
		if (id == 'null') {
			$http.get("/rest/products").then(resp => {
				$scope.pro = resp.data;
				
			});
		
		} else {
			$http.get(`/rest/products/category/${id}`).then(resp => {
				$scope.pro = resp.data;
				
			})
			
		}

	}
	$scope.getCategoties = function () {
		$http.get("/rest/categories").then(resp => {
			$scope.listCategory = resp.data;
		})
		$http.get(`/rest/favorite/finduser/${$("#userremost").text()}`).then(resp => {
			$scope.listFavorite = resp.data;

		})

	}
	$scope.preorder = function (ord) {
		console.log(ord);
		var item = {
			status: 1
		};
		$http.get(`/rest/orderdetail/getbybill/${ord.billid}`, item).then(resp => {
			$scope.listcart = resp.data;
			for (let i = 0; i < $scope.listcart.length; i++) {
				var item = {
					account: { username: ord.account.username },
					product: { productid: $scope.listcart[i].product.productid },
					quantity: $scope.listcart[i].quantity,
					sumprice: $scope.listcart[i].sumprice
				}
				$http.post(`/rest/cart`, item).then(resp => {
					console.log(resp.data);
				})
			}
		})
		window.location.href = '/order/purchase';
	}
	$scope.cancelorder = function (ord) {
		var item = {
			status: 4
		};
		var listbill = [];
		console.log(ord);
		$http.get(`/rest/orderdetail/getbybill/${ord.billid}`, item).then(resp => {
			listbill = resp.data;
			console.log(listbill);
			for (let i = 0; i < listbill.length; i++) {
				listbill[i].product.quantity += listbill[i].quantity
				// console.log(listbill[i].product.productid);
				$http.put(`/rest/products/${listbill[i].product.productid}`, listbill[i].product).then(resp => {
					console.log(resp.data);
				})
			}
			$http.put(`/rest/bill/cancel/${ord.billid}`, item).then(resp => {
				var index = $scope.listOrder.findIndex(p => p.billid == item.billid);
				$scope.listOrder[index] = item;
				$scope.getListOrder();
				swal({
					title: "Thành công!",
					text: "Hủy đơn hàng thành công",
					icon: "success",
					button: "OK!",
				});
			})
		}).catch(error => {
			swal({
				title: "Lỗi!",
				text: "Hủy đơn hàng thất bại",
				icon: "error",
				button: "OK!",
			});
			console.log(error);
		})

	}
	$scope.getFavorite = function () {
		$http.get("/rest/categories").then(resp => {
			$scope.listCategory = resp.data;
		})
	}
	$scope.products = function () {

		$http.get("/rest/products").then(resp => {
			$scope.fullpro = resp.data;
		});
		$http.get("/rest/accounts/getone").then(resp => {
			$scope.account = resp.data;

		}).catch(error => {
			$scope.account = null;
		});
		$http.get("/rest/favorite/all").then(resp => {
			$scope.favorite = resp.data;
		});

	}
	$scope.pros = function (item) {
		$scope.sanpham = item;
	}
	var username = $("#userremost").text();
	$rootScope.cart = {
		listCarts: [],
		add(id) {
			function saveCart(callback) {
				var item = $rootScope.cart.listCarts.find(i => { return i.product.productid == id });
				if (item) {
					item.quantity++;
					swal({
						title: "Thành công!",
						text: "Thêm vào giỏ hàng",
						icon: "success",
						button: "OK!",
					});
					callback();
				} else {
					$http.get(`/rest/products/${id}`).then(resp => {
						var newCart = {
							account: { username: username },
							product: resp.data,
							quantity: 1,
							sumprice: resp.data.price
						};

						$rootScope.cart.listCarts.push(newCart);
						swal({
							title: "Thành công!",
							text: "Thêm vào giỏ hàng",
							icon: "success",
							button: "OK!",
						});
						callback();
					})
				}
			}

			if (this.checkLogin()) {
				saveCart(this.saveToDatabase);
			} else {
				saveCart(this.saveToLocalStorage);
			}
		},
		clearCart(username) {
			if (this.checkLogin()) {
				$http.delete(`/rest/cart/delbyuser/${username}`)
				this.loadFromDatabase();
			} else {
				$rootScope.cart.listCarts = [];
				this.saveToLocalStorage();
			}
		},
		checkLogin() {
			if (username == '') {
				return false;
			}
			return true;
		},
		saveToLocalStorage() {
			var json = JSON.stringify(angular.copy($rootScope.cart.listCarts));
			console.log(json)
			localStorage.setItem("cart", json);
		},
		saveToDatabase() {
			$http.post('/rest/cart/list', $rootScope.cart.listCarts).then(resp => {
				$rootScope.cart.loadFromDatabase();
			})
		},
		loadFromDatabase() {
			$http.get(`/rest/cart/getbyuser/${username}`).then(resp => {
				this.listCarts = resp.data;
			})
		},
		loadFromLocalStorage() {
			var json = localStorage.getItem("cart");
			$rootScope.cart.listCarts = json ? JSON.parse(json) : [];
		},

		deleteFromDatabase(cartId) {
			$http.delete(`/rest/cart/${cartId}`).then(resp => {
				$rootScope.cart.loadFromDatabase();
			})
		},
		deleteFromLocalStorage(productId) {
			var index = this.listCarts.findIndex(item => item.product.productId == productId);
			this.listCarts.splice(index, 1);
			this.saveToLocalStorage();
		},
		loadCart() {
			if (this.checkLogin()) {
				var json = localStorage.getItem("cart");
				if (json == '[]') {
					this.loadFromDatabase();
				} else {
					var data = json ? JSON.parse(json) : [];
					data.map(cart => {
						cart.account.username = username;
					})
					this.listCarts = data;
					localStorage.setItem("cart", '[]');
					$http.delete(`/rest/cart/delbyuser/${username}`).then(resp => {
						this.saveToDatabase();
					})
				}
			} else {
				this.loadFromLocalStorage();
			}
		},
		saveCart() {
			if (this.checkLogin()) {
				this.saveToDatabase();
			} else this.saveToLocalStorage();
		},
		deleteCart(cartId, proudctId) {
			if (this.checkLogin()) {
				this.deleteFromDatabase(cartId);
			} else this.deleteFromLocalStorage(proudctId);
		},
		get count() {
			return this.listCarts.map(item => item.quantity).reduce((total, quantity) => total += quantity, 0);
		},
		get amount() {
			return this.listCarts.map(item => item.quantity * item.product.price).reduce((total, quantity) => total += quantity, 0);
		}
	}



	$scope.checkfav = function (pro, acc) {
		var chfav = $scope.favorite.find(ur => ur.account.username == acc.username && ur.product.productid == pro.productid);

		if (chfav) {
			return true;

		} else {
			return false;
		}
	}
	// $scope.actiontest = function (pro, acc) {
	// 	console.log(pro)
	// }
	$scope.actionfav = function (pro, acc) {
		var chfav = $scope.favorite.find(ur => ur.account.username == acc.username && ur.product.productid == pro.productid);
		if (chfav) {
			
			$http.delete(`/rest/favorite/${chfav.favid}`).then(resp => {
				var index = $scope.favorite.findIndex(a => a.favid == chfav.favid);
				$scope.favorite.splice(index, 1);
				swal({
					title: "Yêu thích",
					text: "Xóa khỏi yêu thích thành công",
					icon: "error",
					buttons: "Đồng ý",
					dangerMode: true,
				})
			}).catch(error => {
				console.log("Error", error);
			})

		} else {
			
			var f = {
				favdate: new Date(), account: { username: acc.username }, product: { productid: pro.productid }
			}
			$http.post(`/rest/favorite`, f).then(resp => {
				$scope.favorite.push(resp.data);
				swal({
					title: "Yêu thích",
					text: "Thêm vào yêu thích thành công",
					icon: "success",
					buttons: "Đồng ý",
					dangerMode: true,
				})
			}).catch(error => {
				console.log("Error", error);
			})
		}
	}
	$scope.register = function () {
		var fullname = document.getElementById("fullname").value;
		var username = document.getElementById("username").value;
		var email = document.getElementById("email").value;
		var password = document.getElementById("matkhau").value;
		var phone = document.getElementById("phone").value;
		var gender = parseInt(document.getElementById("gender").value);
		var re = {
			fullname: fullname,
			username: username,
			email: email,
			password: password,
			phone: phone,
			gender: gender
		}
		$http.post("/rest/accounts/dangky", re).then(resp => {
			swal({
				title: "Tài khoản",
				text: "Đăng ký tài khoản thành công",
				icon: "success",
				buttons: "Đồng ý",
				dangerMode: true,
			})
				.then((willDelete) => {
					if (willDelete) {
						window.location.href = '/';
					}
				});

		}).catch(error => {
			swal({
				title: "Tài khoản",
				text: "Đăng ký tài khoản thất bại",
				icon: "error",
				buttons: "Đồng ý",
				dangerMode: true,
			})
			console.log("Error", error);
		})
	}
	$scope.findone = function (item) {
		$scope.view = item;
	}
	$scope.pagerProduct = {
		page: 0,
		size: 8,
		get items() {
			var start = this.page * this.size;
			return $scope.fullpro.slice(start, start + this.size);
		}
	}
	$scope.pagerListProduct = {
		page: 0,
		size: 9,
		get items() {
			var start = this.page * this.size;
			return $scope.pro.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.pro.length / this.size);
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
	$scope.pagerListOrder = {
		page: 0,
		size: 5,
		get items() {
			var start = this.page * this.size;
			return $scope.listOrder.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.listOrder.length / this.size);
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
	$scope.pagerListFavorite = {
		page: 0,
		size: 6,
		get items() {
			var start = this.page * this.size;
			console.log($scope.listFavoritex)
			return $scope.listFavorite.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.listFavorite.length / this.size);
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
	$scope.getListOrder();
	$scope.getCategoties();
	$rootScope.cart.loadCart();
	$scope.products();
	$scope.getProductinCate();
});

app.controller("order-ctrl", function ($scope, $rootScope, $http) {
	$rootScope.shipfee = 14000;
	$scope.quan = "";
	$scope.phuong = "";
	$scope.thanhpho = "";
	$scope.sonha = "";
	$scope.result = "";
	// $scope.getData = function () {

	// };
	$rootScope.shipMethod = {
		listMethodShip: [],
		getMethodShip() {
			this.listMethodShip = [
				// {
				// 	id: 1,
				// 	name: "Thanh toán khi nhận hàng"
				// },
				// {
				// 	id: 2,
				// 	name: "Thanh toán qua chuyển khoản"
				// }
			]
			this.methodShip = this.listMethodShip[1]
		},
		isViewMethodShip: true,
		methodShip: {},
		changeMethodShip(methodship) {
			if (methodship) {
				this.methodShip = methodship;

			}
			if (this.isViewMethodShip) {
				this.isViewMethodShip = false;

			} else {
				this.isViewMethodShip = true;
			}
		}
	}
	$rootScope.order = {
		purchase() {
			var quan = $scope.quan;
			var phuong = $scope.phuong;
			var thanhpho = $scope.thanhpho;
			var sonha = $scope.sonha;
			$scope.result = sonha + " Phường/Ấp: " + phuong + " Quận/Xã: " + quan + " Thành phố/Tỉnh: " + thanhpho;
			var order = {
				address: $scope.result,
				account: { username: $("#userremost").text() },
				status: 1,
				paymentmt: 1,
				shipfee: $rootScope.shipfee,
				sumprice: $rootScope.cart.amount + $rootScope.shipfee
			}
			$http.post("/rest/order", order).then(resp => {
				var orderDetails = [];//thông tin chi tiết đơn hàng
				$rootScope.cart.listCarts.forEach(cart => {
					var orderDetail = {
						sumprice: cart.sumprice,
						quantity: cart.quantity,
						product: cart.product,
						bill: resp.data
					}
					orderDetails.push(orderDetail)
					cart.product.quantity -= cart.quantity;
					console.log(cart.product)
					$http.post("/rest/products", cart.product).then(resp => {
						console.log(cart.product)
					})
				})
				$http.post("/rest/orderdetail", orderDetails).then(resp => {
					$rootScope.cart.clearCart($("#userremost").text())
					$rootScope.cart.loadCart()
					swal({
						title: "Thanh toán",
						text: "Đặt hàng thành công",
						icon: "success",
						buttons: "Đồng ý",
						dangerMode: true,
					})
						.then((willDelete) => {
							if (willDelete) {
								window.location.href = '/';
							}
						});

				})
			})


			console.log(order)
		}
	}
});

app.controller("detail-ctrl", function ($scope, $http, $rootScope) {
	$scope.ListCategoryPro= [];
	$scope.idcate = $("#categoryid").text();
	console.log($scope.idcate);
	$scope.listcategory = function(){
		$http.get(`/rest/products/category/${$scope.idcate}`).then(resp => {
			$scope.ListCategoryPro = resp.data;
			console.log(resp.data);
		})
	}
	$scope.pagecate = {
		page: 0,
		size: 4,
		get items() {
			var start = this.page * this.size;
			return $scope.ListCategoryPro.slice(start, start + this.size);
		}
	}
	$scope.listcategory();
	$scope.favorite = {
		user: $("#username").text(),
		proid: $("#productid").text(),
		categoryid: $("#categoryid").text(),
		isLike: false,
		countLike: 0,
		ListLike: [],
		pagecategory: {},
		ListCategoryPro: [],
		Likeone: {},
		
		checkLike() {
			$http.get(`/rest/favorite/checkexist?p=${this.proid}&u=${this.user}`).then(resp => {
				this.isLike = resp.data;
			})
		},
		triggle() {
			$http.get(`/rest/favorite?p=${this.proid}&u=${this.user}`).then(resp => {
				if (resp.data != "") {
					$http.delete(`/rest/favorite/${resp.data.favid}`)
					this.isLike = false;
					swal({
						title: "Yêu thích",
						text: "Xóa khỏi yêu thích thành công",
						icon: "error",
						buttons: "Đồng ý",
						dangerMode: true,
					})
					// this.countLike -= 1;
				} else {
					this.isLike = true;
					var f = {
						favdate: new Date(),
						product: { productid: this.proid },
						account: { username: this.user }
					}
					$http.post(`/rest/favorite`, f)
					
					swal({
						title: "Yêu thích",
						text: "Thêm vào yêu thích thành công",
						icon: "success",
						buttons: "Đồng ý",
						dangerMode: true,
					})
					// this.countLike += 1;
				}
			});
		}
	}
	$scope.favorite.checkLike()

});

app.controller("profile-ctrl", function ($scope, $http) {
	$scope.user = {
		profile: {},
		getInfo(username) {
			$http.get(`/rest/users/${username}`).then(resp => {
				this.profile = resp.data;
			})
		},
		update() {
			swal({
				title: "Thành công!",
				text: "Đã đổi hồ sơ người dùng!",
				icon: "success",
				button: "OK!",
			});
			$http.post("/rest/users", this.profile)
		}
	}
	$scope.user.getInfo($("#userremost").text());
	$scope.displayImage = function () {
		var fileInput = document.getElementById('inuput_img');
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
						$scope.user.profile.photo = resp.data.name;
						console.log($scope.user.profile.photo);
					}).catch(error => {
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

});