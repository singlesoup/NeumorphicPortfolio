import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

import 'constants/decor.dart';
import 'exrtraDesigns.dart';
import 'provider/modes_provider.dart';

class BottomSheetDesign extends StatelessWidget {
  const BottomSheetDesign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool dM = Provider.of<ModesProvider>(context).darkMode;
    return Container(
      decoration: dM == false
          ? null
          : BoxDecoration(
              color: dmC,
            ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: 7,
          ),
          DraggableIcon(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Share',
            style: TextStyle(
              color: dM == false ? null : Colors.white70,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Check out Himanshu\'s github profile',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: dM == false ? fCL : fCD,
            ),
          ),
          Text(
            'https://github.com/singlesoup/',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: mCC,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Icon(
            MaterialIcons.filter_none,
            color: dM == false ? null : fCD,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Copy link',
            style: TextStyle(
              color: dM == false ? null : fCD,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            decoration: dM == false ? innerBoxEffect : innerBoxEffectD,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BSIcons(FontAwesome.facebook),
                  SizedBox(width: 5),
                  BSIcons(FontAwesome.instagram),
                  SizedBox(width: 5),
                  BSIcons(FontAwesome.twitter),
                  SizedBox(width: 5),
                  BSIcons(FontAwesome.whatsapp),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

class BSIcons extends StatelessWidget {
  final IconData icon;
  BSIcons(this.icon);
  @override
  Widget build(BuildContext context) {
    bool dM = Provider.of<ModesProvider>(context).darkMode;
    return Icon(
      icon,
      color: dM == false ? fCL : fCD,
    );
  }
}
