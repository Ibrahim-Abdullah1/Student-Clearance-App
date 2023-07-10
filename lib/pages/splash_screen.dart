import 'package:flutter/material.dart';
import 'package:student_clearance_app/pages/login_page.dart';

import '../themes/app_style.dart';
import '../utilis/color_constant.dart';
import '../utilis/image_constants.dart';
import '../utilis/size_utilis.dart';
import '../widget/custom_image_view.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPageScreen()),
      );
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  555,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector1,
                      height: getVerticalSize(
                        555,
                      ),
                      width: getHorizontalSize(
                        314,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector2,
                      height: getVerticalSize(
                        518,
                      ),
                      width: getHorizontalSize(
                        312,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector3,
                      height: getVerticalSize(
                        503,
                      ),
                      width: getHorizontalSize(
                        313,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img15299651015183,
                      height: getVerticalSize(
                        214,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  62,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 20,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getSize(
                          10,
                        ),
                        width: getSize(
                          10,
                        ),
                        margin: getMargin(
                          left: 176,
                          top: 17,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.teal300,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getSize(
                          10,
                        ),
                        width: getSize(
                          10,
                        ),
                        margin: getMargin(
                          top: 17,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.teal200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: getSize(
                          10,
                        ),
                        width: getSize(
                          10,
                        ),
                        margin: getMargin(
                          top: 17,
                          right: 159,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.cyan100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: getSize(
                          10,
                        ),
                        width: getSize(
                          10,
                        ),
                        margin: getMargin(
                          top: 17,
                          right: 144,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.cyan10001,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: getPadding(
                          top: 3,
                          right: 137,
                        ),
                        child: Text(
                          "LOADING",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular12.copyWith(
                            letterSpacing: getHorizontalSize(
                              3.06,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getVerticalSize(
                          35,
                        ),
                        width: getHorizontalSize(
                          28,
                        ),
                        margin: getMargin(
                          left: 136,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(
                                28,
                              ),
                              width: getSize(
                                28,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "U",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSairaStencilOneRegular22,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "CLEAR",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSairaStencilOneRegular6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
