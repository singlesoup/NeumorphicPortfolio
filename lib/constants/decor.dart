import 'package:flutter/material.dart';


//?light mode

Color mC = Colors.grey[100];
Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.075);
Color mCC = Colors.green.withOpacity(0.65);
Color fCL = Colors.grey[600];


BoxDecoration outerBoxEffect = BoxDecoration(
  shape: BoxShape.circle,
  color: mC,
  boxShadow: [
    BoxShadow(
      color: mCD,
      offset: Offset(8, 8),
      blurRadius: 10,
    ),
    BoxShadow(
      color: mCL,
      offset: Offset(-8, -8),
      blurRadius: 10,
    ),
  ],
);

BoxDecoration innerBoxEffect = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: mCD,
  boxShadow:[
    BoxShadow(
      color: mCL,
      offset: Offset(3,3),
      blurRadius: 3,
      spreadRadius: -3,
    ),
    BoxShadow(
      color: mCD,
      offset: Offset(-3,-3),
      blurRadius: 3,
      spreadRadius: -3,
    ),
        
  ]
);

//*dark mode

const dmC = Color(0xff3b3b3b);
const dmCL = Color(0xff4d4d4d);
const dmCD = Colors.black54;
Color fCD = Colors.grey[300];

BoxDecoration outerBoxEffectD = BoxDecoration(
  shape: BoxShape.circle,
  color: dmC,
  boxShadow: [
    BoxShadow(
      color: dmCD,
      offset: Offset(8, 8),
      blurRadius: 10,
    ),
    BoxShadow(
      color: dmCL,
      offset: Offset(-8,-8),
      blurRadius: 10,
    ),
  ],
);

BoxDecoration innerBoxEffectD = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: dmCD,
  boxShadow:[
    BoxShadow(
      color: dmCL,
      offset: Offset(3,3),
      blurRadius: 3,
      spreadRadius: -3,
    ),
    BoxShadow(
      color: dmCD,
      offset: Offset(-3,-3),
      blurRadius: 3,
      spreadRadius: -3,
    ),
        
  ]
);