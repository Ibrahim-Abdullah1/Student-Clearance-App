import 'package:flutter/material.dart';

import '../utilis/color_constant.dart';
import '../utilis/size_utilis.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack90099 => BoxDecoration(
        color: ColorConstant.teal300,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90099,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray700012 => BoxDecoration(
        color: ColorConstant.teal300,
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fillGray700 => BoxDecoration(
        color: ColorConstant.gray700,
      );
  static BoxDecoration get outlineGray700011 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fillTeal300 => BoxDecoration(
        color: ColorConstant.teal300,
      );
  static BoxDecoration get fillGray30099 => BoxDecoration(
        color: ColorConstant.gray30099,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray70001 => BoxDecoration(
        color: ColorConstant.blueGray900,
        border: Border.all(
          color: ColorConstant.gray70001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray70001 => BoxDecoration(
        color: ColorConstant.whiteA7000c,
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray700013 => BoxDecoration(
        color: ColorConstant.teal300,
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray700012 => BoxDecoration(
        color: ColorConstant.indigoA200,
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray700011 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray700014 => BoxDecoration(
        color: ColorConstant.gray700,
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.gray70001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder7 = BorderRadius.circular(
    getHorizontalSize(
      7,
    ),
  );

  static BorderRadius circleBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius roundedBorder41 = BorderRadius.circular(
    getHorizontalSize(
      41,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
