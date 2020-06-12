import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

import 'constants/decor.dart';
import 'provider/modes_provider.dart';

class MiddlePart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool dM = Provider.of<ModesProvider>(context).darkMode;
    return Container(
      child: Column(
        children: <Widget>[
          AvatarImage(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Himanshu Nawalkar',
            style: TextStyle(
              color: dM == false ? Colors.black87 : Colors.white,
              fontSize: 29,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Nagpur',
            style: TextStyle(
              color: dM == false ? Colors.grey[700] : Colors.white38,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Anime, Football & Flutter Dev',
            style: TextStyle(
              color: dM == false ? Colors.grey : Colors.white70,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcons(
                icon: FontAwesome.facebook,
              ),
              SizedBox(width: 12),
              SocialIcons(icon: FontAwesome.twitter),
              SizedBox(width: 12),
              SocialIcons(icon: FontAwesome.instagram),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool dM = Provider.of<ModesProvider>(context).darkMode;

    return Container(
      padding: EdgeInsets.all(8),
      height: 150,
      width: 150,
      decoration: dM == false ? outerBoxEffect : outerBoxEffectD,
      child: Container(
        decoration: dM == false ? outerBoxEffect : outerBoxEffectD,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/dp.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  final IconData icon;
  SocialIcons({this.icon});

  @override
  Widget build(BuildContext context) {
    bool dM = Provider.of<ModesProvider>(context).darkMode;
    return Container(
      height: 55,
      width: 55,
      padding: EdgeInsets.all(7),
      decoration: dM == false ? outerBoxEffect : outerBoxEffectD,
      child: Icon(
        icon,
        color: dM == false ? fCL : fCD,
      ),
    );
  }
}
