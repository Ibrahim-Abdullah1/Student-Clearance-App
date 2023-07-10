import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_clearance_app/pages/forget_password_screen.dart';
import 'package:student_clearance_app/pages/student_main.dart';

import '../themes/app_decoration.dart';
import '../themes/app_style.dart';
import '../utilis/color_constant.dart';
import '../utilis/image_constants.dart';
import '../utilis/size_utilis.dart';
import '../widget/custom_button.dart';
import '../widget/custom_image_view.dart';
import '../widget/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//Login Method
  Future<void> _signIn(BuildContext context) async {
    print("Sign in Called");
    String reg_no = emailController.text;
    String password = passwordController.text;

    final QuerySnapshot result = await FirebaseFirestore.instance
        .collection('students')
        .where('registrationNumber', isEqualTo: reg_no)
        .get();

    final List<DocumentSnapshot> docs = result.docs;
    if (docs.length == 0) {
      // handle error - no user found
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid credentials'),
          duration: Duration(seconds: 3),
        ),
      );
    } else {
      if (docs[0].get('password') == password) {
        print("Login Successful");

        // Navigate and pass the document ID
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => studentmain(documentId: docs[0].id)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Invalid credentials'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }

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
                        651,
                      ),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: getPadding(
                                top: 12,
                                bottom: 12,
                              ),
                              decoration: AppDecoration.fillGray30099.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 50,
                                        top: 123,
                                      ),
                                      child: Text(
                                        "Log in",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratSemiBold17,
                                      ),
                                    ),
                                  ),
                                  CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: emailController,
                                    hintText: "Reg no ",
                                    margin: getMargin(
                                      left: 50,
                                      top: 7,
                                      right: 50,
                                    ),
                                    padding: TextFormFieldPadding.PaddingAll5,
                                    textInputType: TextInputType.emailAddress,
                                  ),
                                  CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: passwordController,
                                    hintText: "Password",
                                    margin: getMargin(
                                      left: 50,
                                      top: 9,
                                      right: 50,
                                    ),
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: Container(
                                      margin: getMargin(
                                        left: 30,
                                        top: 7,
                                        right: 7,
                                        bottom: 7,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.black90078,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgEye,
                                      ),
                                    ),
                                    suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(
                                        25,
                                      ),
                                    ),
                                    isObscureText: true,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 50,
                                        top: 9,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: getSize(
                                              8,
                                            ),
                                            width: getSize(
                                              8,
                                            ),
                                            margin: getMargin(
                                              top: 2,
                                              bottom: 4,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 4,
                                            ),
                                            child: Text(
                                              "Remember me",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _signIn(context);
                                    },
                                    child: CustomButton(
                                      height: getVerticalSize(
                                        25,
                                      ),
                                      text: "Log in",
                                      margin: getMargin(
                                        left: 50,
                                        top: 14,
                                        right: 50,
                                      ),
                                      variant: ButtonVariant.FillTeal300,
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      15,
                                    ),
                                    width: getHorizontalSize(
                                      132,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ForgetPasswordScreen()),
                                              );
                                            },
                                            child: Text(
                                              "Forgotten password?",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold12,
                                            ),
                                          ),
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
                                      top: 205,
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
                                              left: 122,
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
                                              right: 125,
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
                                              right: 125,
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
                                left: 56,
                                top: 14,
                                right: 56,
                                bottom: 14,
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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 25,
                                    ),
                                    child: Text(
                                      "WELCOME BACK",
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
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.img15299651015183104x217,
                                    height: getVerticalSize(
                                      104,
                                    ),
                                    width: getHorizontalSize(
                                      217,
                                    ),
                                    margin: getMargin(
                                      top: 36,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgAlternateemail,
                                    height: getSize(
                                      17,
                                    ),
                                    width: getSize(
                                      17,
                                    ),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(
                                      top: 22,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
