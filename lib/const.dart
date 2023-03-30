import 'package:flutter/material.dart';
// Colors consts

Color myWhite = const Color.fromRGBO(228, 229, 232, 1);
Color myGreen = const Color.fromRGBO(203, 255, 46, 1);
Color myGreenTrans = const Color.fromRGBO(203, 255, 46, 0.6);
Color myGray = const Color.fromRGBO(133, 135, 156, 1);
Color bgColorInput = const Color.fromRGBO(36, 48, 78, 1);
Color bgColorScafold = const Color.fromRGBO(19, 21, 38, 1);
Color myBlack = const Color.fromRGBO(12, 13, 24, 1);

// Styler input
ThemeData inputBordeColors = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    iconColor: myWhite,
    labelStyle: TextStyle(
      fontSize: 16,
      color: myGray,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: TextStyle(
      fontSize: 18,
      color: myWhite,
    ),
  ),
);

// Stilo do texto digitado
TextStyle contentStyleinput = TextStyle(
  color: myWhite,
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

// Style output
TextStyle outputStyle = TextStyle(
  color: myGreen,
  fontFamily: 'monoSpace',
  fontSize: 11,
);
// Sizer icons meni
double size = 40; 


// Input container decoration
//BoxDecoration bgTextInpuFormField BoxDecoration();