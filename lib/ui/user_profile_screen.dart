import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiles_app/constant/app_color.dart';
import 'package:tiles_app/controller/user_profile_controller.dart';
import 'package:tiles_app/utils/shared_prefs.dart';
import 'package:tiles_app/widgets/app_appbar.dart';
import 'package:tiles_app/widgets/app_container.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final UserProfileController userProfileController =
      Get.put(UserProfileController());
  int? userId;

  @override
  void initState() {
    super.initState();
    userId = preferences.getInt(SharedPreference.userId);
    if (userId != null) {
      userProfileController.getUserProfile(userId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return AppContainer(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: whiteColor,
          appBar: CommonAppBar(
            h: h,
            w: w,
            title: "My Profile",
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.040),
            child: Obx(() {
              if (userProfileController.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              var userProfile = userProfileController.userProfile;
              if (userProfile.isEmpty) {
                return const Center(
                  child: Text("No user data available"),
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: h * 0.02),
                  // Heading
                  const Text(
                    "Manage Profile",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  // Display user details
                  Row(
                    children: [
                      const Text(
                        "Name: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        "${userProfile['firstName']} ${userProfile['lastName']}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "Mobile Number: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['mobile'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "Email: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['email'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "Address: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['address'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "Pincode: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['pincode'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "City: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['city'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "State: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['state'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "GST No.: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['gstNo'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "PAN: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['pan'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      const Text(
                        "Website: ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        userProfile['website'] ?? 'N/A',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.04),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
