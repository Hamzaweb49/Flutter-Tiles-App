// ignore_for_file: constant_identifier_names

class AppUrls {
  static const BASE_URL =
      "https://rd-cera-api-e0ekhjatfrgpfybj.centralindia-01.azurewebsites.net/api/";
  static const PINCODE_URL = "https://api.postalpincode.in/pincode/";
}

class MethodNames {
  // Master APIS
  static const getAllLocation = "Master/GetAllLocation";
  static const getAllBrand = "Master/GetAllBrand";
  static const getAllPunch = "Master/GetAllPunch";
  static const addBrand = "Master/AddBrand";
  static const getModel = "Master/GetModel";

  // Product APIS
  static const getParentCategoryByLocation =
      "Master/GetParentCategoryByLocation?locationId=";
  static const getCategoryByParentCategory =
      "Master/GetCategoryByParentCategory?parentCategoryId=";
  static const getSubCategoryByCategory =
      "Master/GetSubCategoryByCategory?categoryId=";
  static const getAllProduct = "Product/GetAllProduct";
  static const getProductById = "Product/GetProductbyId?productId=";
  static const uploadProductImage = "Product/UploadImages";
  static const addProduct = "Product";
  static const updateProduct = "Product/";
  static const getProductBySubCategoryId =
      "Product/GetProductBySubCategoryId?subCategoryId=";

  // Auth APIS
  static const authLogin = "Auth/Login";

  // User APIS
  static const createUser = "User/CreateUser";
  static const createOrder = "User/CreateOrder";
  static const getMyOrders = "User/GetMyOrder?loggedInUserId=";
  static const getCustomerOrders = "User/GetCustomerOrder?daysCount=";
  static const getUserProfile = "User/GetUserProfile?loggedInUserId=";
  static const approveOrder = "User/OrderApprovedByAdmin";
}
