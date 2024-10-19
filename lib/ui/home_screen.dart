// home_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiles_app/constant/app_assets.dart';
import 'package:tiles_app/constant/app_color.dart';
import 'package:tiles_app/constant/app_string.dart';
import 'package:tiles_app/utils/app_routes.dart';
import 'package:tiles_app/utils/extension.dart';
import 'package:tiles_app/widgets/app_appbar.dart';
import 'package:tiles_app/widgets/app_bottom_navigator.dart';
import 'package:tiles_app/widgets/app_button.dart';
import 'package:tiles_app/widgets/app_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        break;
      case 1:
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return AppContainer(
      child: SafeArea(
        child: Scaffold(
          appBar: CommonAppBar(
            h: h,
            w: w,
            title: 'Home',
            backIcon: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                // Handle menu press here
              },
            ),
          ),
          body: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.mapBg),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          AppAssets.appLogoUrl,
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    AppString.welcomeText.semiBoldMontserratTextStyle(
                      fontSize: 22,
                      textAlign: TextAlign.center,
                    ),
                    AppString.selectLoc.regularMontserratTextStyle(
                      fontSize: 16,
                      textAlign: TextAlign.center,
                      fontColor: Colors.black,
                    ),
                    const SizedBox(height: 30),
                    AppFilledButton(
                      title: 'Select Location',
                      fontSize: 17,
                      onPressed: () {
                        Get.toNamed(
                          Routes.locationScreen,
                        );
                      },
                      textColor: whiteColor,
                      buttonColor: appColor,
                      radius: 8,
                      height: h * 0.06,
                      width: 250,
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBarWidget(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
