import 'package:flutter/material.dart';

import '../themes/app_decoration.dart';
import '../themes/app_style.dart';
import '../utilis/color_constant.dart';
import '../utilis/image_constants.dart';
import '../utilis/size_utilis.dart';
import '../widget/custom_button.dart';
import '../widget/custom_image_view.dart';
import '../widget/custom_text_form_field.dart';
import 'login_page.dart';

class ForgetPasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      height: getVerticalSize(
                        644,
                      ),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: getPadding(
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: AppDecoration.fillGray30099.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 36,
                                      top: 231,
                                    ),
                                    child: Text(
                                      "Enter email address",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold12,
                                    ),
                                  ),
                                  CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: emailController,
                                    hintText: "abc@xyz.com",
                                    margin: getMargin(
                                      left: 36,
                                      top: 9,
                                      right: 55,
                                    ),
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress,
                                    suffix: Container(
                                      margin: getMargin(
                                        left: 30,
                                        top: 4,
                                        right: 5,
                                        bottom: 4,
                                      ),
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgAlternateemail,
                                      ),
                                    ),
                                    suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(
                                        25,
                                      ),
                                    ),
                                  ),
                                  CustomButton(
                                    height: getVerticalSize(
                                      25,
                                    ),
                                    text: "Request reset link",
                                    margin: getMargin(
                                      left: 36,
                                      top: 16,
                                      right: 55,
                                    ),
                                    variant: ButtonVariant.FillTeal300,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 135,
                                      top: 10,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPageScreen()),
                                        );
                                      },
                                      child: Text(
                                        "Back to login",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratSemiBold12,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      62,
                                    ),
                                    width: double.maxFinite,
                                    margin: getMargin(
                                      top: 172,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
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
                                              left: 124,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgGlobe,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSairaStencilOneRegular22,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "CLEAR",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSairaStencilOneRegular6,
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
                                              top: 6,
                                              right: 123,
                                            ),
                                            child: Text(
                                              "UNIVERSITY",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  3.06,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 20,
                                              right: 123,
                                            ),
                                            child: Text(
                                              "CLEARANCE",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular7
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  6.72,
                                                ),
                                              ),
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
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              padding: getPadding(
                                left: 36,
                                top: 33,
                                right: 36,
                                bottom: 33,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 8,
                                      ),
                                      child: Text(
                                        "Oops!",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratSemiBold19
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            3.23,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      120,
                                    ),
                                    width: getHorizontalSize(
                                      255,
                                    ),
                                    margin: getMargin(
                                      top: 37,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "Forgot your Password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold17,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .img15299651015183104x217,
                                          height: getVerticalSize(
                                            104,
                                          ),
                                          width: getHorizontalSize(
                                            217,
                                          ),
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: getHorizontalSize(
                                284,
                              ),
                              margin: getMargin(
                                left: 36,
                                top: 239,
                              ),
                              child: Text(
                                "Please enter the email address you'd like your\npassword reset information sent to",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratSemiBold12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
