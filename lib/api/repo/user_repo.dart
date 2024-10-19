import 'package:tiles_app/api/api_helpers.dart';
import 'package:tiles_app/constant/app_request.dart';
import 'package:tiles_app/model/response_item.dart';

class CreateUserRepo {
  static Future<ResponseItem> createUserRepo(
      {required Map<String, dynamic> userData}) async {
    ResponseItem result = ResponseItem();

    String requestUrl = AppUrls.BASE_URL + MethodNames.createUser;
    result = await BaseApiHelper.postRequest(requestUrl, userData);
    return result;
  }
}

class CreateOrderRepo {
  static Future<ResponseItem> createOrderRepo(
      {required Map<String, dynamic> orderData}) async {
    ResponseItem result = ResponseItem();

    String requestUrl = AppUrls.BASE_URL + MethodNames.createOrder;
    result = await BaseApiHelper.postRequest(requestUrl, orderData);
    return result;
  }
}

class GetMyOrdersRepo {
  static Future<ResponseItem> getMyOrdersRepo({required int id}) async {
    ResponseItem result = ResponseItem();
    String requestUrl =
        AppUrls.BASE_URL + MethodNames.getMyOrders + id.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

class OrderApprovedByAdminRepo {
  static Future<ResponseItem> orderApprovedByAdminRepo({
    required int orderId,
    required int orderStatus,
  }) async {
    ResponseItem result = ResponseItem();
    String requestUrl =
        "${AppUrls.BASE_URL}${MethodNames.approveOrder}?orderId=$orderId&orderStatus=$orderStatus";
    result = await BaseApiHelper.postRequest(requestUrl, {});
    return result;
  }
}

class GetCustomerOrdersRepo {
  static Future<ResponseItem> getCustomerOrdersRepo(
      {required int daysCount}) async {
    ResponseItem result = ResponseItem();
    String requestUrl =
        AppUrls.BASE_URL + MethodNames.getCustomerOrders + daysCount.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

class GetUserProfileRepo {
  static Future<ResponseItem> getUserProfileRepo({required int id}) async {
    ResponseItem result = ResponseItem();
    String requestUrl =
        AppUrls.BASE_URL + MethodNames.getUserProfile + id.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}
