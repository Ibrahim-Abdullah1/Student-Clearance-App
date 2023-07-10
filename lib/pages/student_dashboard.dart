import 'package:flutter/material.dart';

import '../themes/app_decoration.dart';
import '../themes/app_style.dart';
import '../utilis/color_constant.dart';
import '../utilis/image_constants.dart';
import '../utilis/size_utilis.dart';
import '../widget/custom_image_view.dart';

class StudentDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.fillGray30099,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: getPadding(
                              left: 32,
                              top: 15,
                              right: 32,
                              bottom: 15,
                            ),
                            decoration: AppDecoration.fillTeal300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgTicket,
                                  height: getSize(
                                    45,
                                  ),
                                  width: getSize(
                                    45,
                                  ),
                                  margin: getMargin(
                                    top: 6,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                  ),
                                  child: Text(
                                    "Edit",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 15,
                            ),
                            padding: getPadding(
                              left: 26,
                              top: 13,
                              right: 26,
                              bottom: 13,
                            ),
                            decoration: AppDecoration.fillTeal300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgCar,
                                  height: getVerticalSize(
                                    50,
                                  ),
                                  width: getHorizontalSize(
                                    55,
                                  ),
                                  margin: getMargin(
                                    top: 4,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                  ),
                                  child: Text(
                                    "Help",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: getHorizontalSize(
                          235,
                        ),
                        margin: getMargin(
                          left: 72,
                          top: 15,
                          right: 68,
                        ),
                        padding: getPadding(
                          left: 12,
                          top: 42,
                          right: 12,
                          bottom: 42,
                        ),
                        decoration: AppDecoration.fillTeal300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "APPLY CLEARANCE",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 35,
                          top: 67,
                          right: 36,
                        ),
                        padding: getPadding(
                          left: 44,
                          top: 3,
                          right: 44,
                          bottom: 3,
                        ),
                        decoration: AppDecoration.outlineBlack90099.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgUser,
                              height: getSize(
                                19,
                              ),
                              width: getSize(
                                19,
                              ),
                              margin: getMargin(
                                top: 1,
                              ),
                            ),
                            Container(
                              height: getSize(
                                19,
                              ),
                              width: getSize(
                                19,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: getSize(
                                        19,
                                      ),
                                      width: getSize(
                                        19,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgNotification,
                                            height: getSize(
                                              19,
                                            ),
                                            width: getSize(
                                              19,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              height: getSize(
                                                6,
                                              ),
                                              width: getSize(
                                                6,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.redA200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        right: 2,
                                      ),
                                      child: Text(
                                        "1",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSanchezRegular4
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getVerticalSize(
                                17,
                              ),
                              width: getHorizontalSize(
                                19,
                              ),
                              margin: getMargin(
                                top: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 18,
                        ),
                        padding: getPadding(
                          left: 68,
                          top: 6,
                          right: 68,
                          bottom: 6,
                        ),
                        decoration: AppDecoration.fillGray700,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: getSize(
                                12,
                              ),
                              width: getSize(
                                12,
                              ),
                              margin: getMargin(
                                left: 1,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: getSize(
                                12,
                              ),
                              width: getSize(
                                12,
                              ),
                              margin: getMargin(
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    6,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgPlay,
                              height: getSize(
                                14,
                              ),
                              width: getSize(
                                14,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  1,
                                ),
                              ),
                              margin: getMargin(
                                top: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: getPadding(
                    left: 105,
                    top: 2,
                    right: 105,
                    bottom: 2,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup24,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          148,
                        ),
                        width: getHorizontalSize(
                          164,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Muhammad Uzair",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratRegular18,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img264x2641,
                              height: getSize(
                                131,
                              ),
                              width: getSize(
                                131,
                              ),
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 2,
                          bottom: 83,
                        ),
                        child: Text(
                          "1561AS-DA1587",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
