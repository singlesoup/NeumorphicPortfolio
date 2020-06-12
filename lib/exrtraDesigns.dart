import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/decor.dart';
import 'provider/modes_provider.dart';


class DraggableIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    bool dM = Provider.of<ModesProvider>(context).darkMode;
    return Container(
      margin: EdgeInsets.only(top:5),
      height: 10,
      width: 50,
      decoration: BoxDecoration(
        color: dM == false ? mC : dmC,
        boxShadow: [
          BoxShadow(
            color: dM ? dmCD :mCD,
            offset: Offset(6, 6),
            blurRadius: 3,
          ),
          BoxShadow(
            color:dM ? dmCL : mCL,
            offset: Offset(-6, -6),
            blurRadius: 3,
          ),
        ],
      ),
    );
  }
}