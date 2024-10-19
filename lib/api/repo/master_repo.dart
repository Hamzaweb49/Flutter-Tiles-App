import 'dart:io';

import 'package:tiles_app/api/api_helpers.dart';
import 'package:tiles_app/constant/app_request.dart';
import 'package:tiles_app/model/response_item.dart';

///GET ALL Location DATA
class GetAllLocationData {
  static Future<ResponseItem> getAllLocationData() async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL + MethodNames.getAllLocation;
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

/// GET Parent CATEGORY
class GetParentCategoryRepo {
  static Future<ResponseItem> getParentCategoryRepo({required int id}) async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL +
        MethodNames.getParentCategoryByLocation +
        id.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

/// GET CATEGORY
class GetCategoryRepo {
  static Future<ResponseItem> getCategoryRepo({required int id}) async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL +
        MethodNames.getCategoryByParentCategory +
        id.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

/// GET SUB CATEGORY
class GetSubCategoryRepo {
  static Future<ResponseItem> getSubCategoryRepo({required int id}) async {
    ResponseItem result = ResponseItem();
    String requestUrl =
        AppUrls.BASE_URL + MethodNames.getSubCategoryByCategory + id.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

///GET ALL Brands
class GetAllBrand {
  static Future<ResponseItem> getAllBrand() async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL + MethodNames.getAllBrand;
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

///GET ALL Punch
class GetAllPunch {
  static Future<ResponseItem> getAllPunch() async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL + MethodNames.getAllPunch;
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

///Add Brand
class AddBrandRepo {
  static Future<ResponseItem> addBrandRepo(
      {required Map<String, dynamic> brandData}) async {
    ResponseItem result = ResponseItem();

    String requestUrl = AppUrls.BASE_URL + MethodNames.addBrand;
    result = await BaseApiHelper.postRequest(requestUrl, brandData);
    return result;
  }
}

///GET ALL Product Models DATA
class GetAllProductModelsData {
  static Future<ResponseItem> getAllProductModelsData() async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL + MethodNames.getModel;
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}
