import 'package:flutter/material.dart';

import '../themes/app_decoration.dart';
import '../themes/app_style.dart';
import '../utilis/color_constant.dart';
import '../utilis/image_constants.dart';
import '../utilis/size_utilis.dart';
import '../widget/custom_button.dart';
import '../widget/custom_image_view.dart';
import '../widget/custom_text_form_field.dart';

class StudentDashboardOneScreen extends StatelessWidget {
  TextEditingController grouptwentyfiveController = TextEditingController();

  TextEditingController grouptwentysixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray30099,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 35,
            top: 26,
            right: 35,
            bottom: 26,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      "Notifications",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold17,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 21,
                    right: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 7,
                          bottom: 1,
                        ),
                        child: Text(
                          "Librarian ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular17,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          30,
                        ),
                        width: getHorizontalSize(
                          135,
                        ),
                        text: "Sent",
                        shape: ButtonShape.Square,
                        fontStyle: ButtonFontStyle.MontserratSemiBold17,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.black900,
                    indent: getHorizontalSize(
                      2,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 24,
                    right: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Text(
                          "Printing Office",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular17,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          30,
                        ),
                        width: getHorizontalSize(
                          135,
                        ),
                        text: "Sent",
                        margin: getMargin(
                          bottom: 1,
                        ),
                        shape: ButtonShape.Square,
                        fontStyle:
                            ButtonFontStyle.MontserratSemiBold17Gray70078,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.black900,
                    indent: getHorizontalSize(
                      2,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 33,
                  ),
                  child: Text(
                    "Librarian requesting a meeting...",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium17,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.black900,
                    indent: getHorizontalSize(
                      2,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 24,
                    right: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Text(
                          "Printing Office",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular17,
                        ),
                      ),
                      CustomTextFormField(
                        width: getHorizontalSize(
                          135,
                        ),
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: grouptwentyfiveController,
                        hintText: "Cleared",
                        margin: getMargin(
                          bottom: 1,
                        ),
                        variant: TextFormFieldVariant.FillIndigoA200,
                        padding: TextFormFieldPadding.PaddingT4,
                        fontStyle: TextFormFieldFontStyle.MontserratSemiBold17,
                        prefix: Container(
                          margin: getMargin(
                            left: 12,
                            top: 3,
                            right: 7,
                            bottom: 3,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCheckCircle,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.black900,
                    indent: getHorizontalSize(
                      2,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 24,
                    right: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 9,
                        ),
                        child: Text(
                          "Librarian ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular17,
                        ),
                      ),
                      CustomTextFormField(
                        width: getHorizontalSize(
                          135,
                        ),
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: grouptwentysixController,
                        hintText: "Cleared",
                        variant: TextFormFieldVariant.FillIndigoA20001,
                        padding: TextFormFieldPadding.PaddingT4,
                        fontStyle: TextFormFieldFontStyle.MontserratSemiBold17,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: getMargin(
                            left: 12,
                            top: 3,
                            right: 8,
                            bottom: 3,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCheckCircle,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.black900,
                    indent: getHorizontalSize(
                      2,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 24,
                    right: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Text(
                          "I/C Electronic lab",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular17,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          30,
                        ),
                        width: getHorizontalSize(
                          135,
                        ),
                        text: "Sent",
                        shape: ButtonShape.Square,
                        fontStyle:
                            ButtonFontStyle.MontserratSemiBold17Gray70078,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.black900,
                    indent: getHorizontalSize(
                      2,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 76,
                    right: 1,
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
                        svgPath: ImageConstant.imgUserWhiteA700,
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
                      CustomImageView(
                        svgPath: ImageConstant.imgNotificationGray800,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
