import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiles_app/constant/app_color.dart';
import 'package:tiles_app/controller/add_brand_controller.dart';
import 'package:tiles_app/widgets/app_appbar.dart';
import 'package:tiles_app/widgets/app_container.dart';
import 'package:tiles_app/widgets/custom_text_fields.dart';
import 'package:tiles_app/widgets/app_button.dart';

class AddBrandScreen extends StatelessWidget {
  const AddBrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddBrandController addBrandController = Get.put(AddBrandController());
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return AppContainer(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: CommonAppBar(
            h: h,
            w: w,
            title: 'Manage Brand',
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: w * 0.040),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Add Brand',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Enter Brand Name',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                CustomTextField(
                  labelText: 'Brand Name',
                  hintText: 'Enter Brand Name',
                  controller: addBrandController.brandNameController,
                ),
                const SizedBox(height: 30),
                AppFilledButton(
                  title: 'Add Brand',
                  buttonColor: appColor,
                  textColor: whiteColor,
                  fontSize: 16,
                  onPressed: () {
                    addBrandController.addBrand();
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
