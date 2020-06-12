import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import 'package:skeuportfolio/constants/decor.dart';

import 'provider/modes_provider.dart';

class LastPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            RowElements(
              icon: Feather.mail,
              text: 'himanshu.nawalkar@gmail.com',
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            RowElements(
              icon: Feather.github,
              text: '3 Projects',
            ),
            SizedBox(width: 10),
            RowElements(
              icon: Feather.phone,
              text: '8850866281',
            ),
          ],
        ),
        SizedBox(height: 10),


      ],
    );
  }
}

class RowElements extends StatelessWidget {
  final IconData icon;
  final String text;
  RowElements({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    bool dM = Provider.of<ModesProvider>(context).darkMode; 
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: dM == false ? innerBoxEffect : innerBoxEffectD,
        width: 50,
        child: Row(
          children: <Widget>[
            Icon(icon, size: 20, color:  dM == false ? fCL : fCD),
            SizedBox(width: 7),
            Text(
              text,
              style: TextStyle(
                color:  dM == false ? Colors.black : Colors.white,
                fontSize: 14, 
                fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
