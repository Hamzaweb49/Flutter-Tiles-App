import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiles_app/api/repo/master_repo.dart';
import 'package:tiles_app/api/repo/user_repo.dart';
import 'package:tiles_app/controller/product_details_controller.dart';
import 'package:tiles_app/model/response_item.dart';
import 'package:tiles_app/theme/app_layout.dart';

class CreateOrderController extends GetxController {
  RxBool isLoading = false.obs;
  var productDetails = [].obs;
  var selectedModelId = 0.obs;

  final ProductDetailsController productDetailsController =
      Get.put(ProductDetailsController());
  final TextEditingController noOfBoxesController = TextEditingController();

  var models = <Map<String, dynamic>>[].obs;

  fetchProductModels() async {
    ResponseItem result =
        await GetAllProductModelsData.getAllProductModelsData();
    try {
      if (result.status && result.data != null) {
        models.value = (result.data as List).cast<Map<String, dynamic>>();
      } else {
        showBottomSnackBar(result.message ?? 'Something went wrong');
      }
    } catch (e) {
      log('ERROR=====selectedCategory==>>>>====>>>>$e');
    } finally {}
    update();
  }

  Future<void> fetchProductDetails(int productId) async {
    isLoading.value = true;
    await productDetailsController.getProductDetails(productId);
    productDetails.value = productDetailsController.productDetails;
    isLoading.value = false;
    update(); // Notify listeners
  }

  /// Helper method to get common models between API and product details
  List<Map<String, dynamic>> getCommonModels(List<dynamic> productModels) {
    // Extract model names from productModels
    final productModelNames =
        productModels.map((productModel) => productModel['model']).toList();

    // Find common models based on names
    final commonModels = models.where((model) {
      return productModelNames.contains(model['name']);
    }).toList();

    return commonModels;
  }

  /// Create NEW Order DATA API
  createOrder({
    required int productId,
    required int createdBy,
    required String createdOn,
    required int modifiedBy,
    required String modifiedOn,
    required int modelId,
  }) async {
    if (noOfBoxesController.text.isEmpty) {
      showErrorSnackBar('Please enter the number of boxes.');
      return;
    }

    // Convert noOfBoxes to an integer
    int noOfBoxes = int.tryParse(noOfBoxesController.text) ?? 0;

    // Ensure the order data matches the expected API format
    final orderData = {
      "createdBy": createdBy,
      "createdOn": createdOn,
      "modifiedBy": modifiedBy,
      "modifiedOn": modifiedOn,
      "id": 0,
      "productId": productId,
      "noOfBoxes": noOfBoxes,
      "modelId": modelId,
    };
    try {
      ResponseItem result =
          await CreateOrderRepo.createOrderRepo(orderData: orderData);
      if (result.status == true) {
        showSuccessSnackBar('Order Created successfully');
        clearControllers();
      } else {
        showErrorSnackBar('Something went wrong, please try again');
      }
    } catch (e) {
      log('ERROR while Creating Order: $e');
      showErrorSnackBar('An error occurred, please try again');
    } finally {
      isLoading.value = false;
    }
  }

  void clearControllers() {
    noOfBoxesController.clear();
    selectedModelId = 6 as RxInt;
  }
}
