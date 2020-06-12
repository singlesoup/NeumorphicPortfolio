import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import 'provider/modes_provider.dart';
import 'constants/decor.dart';

class Modes extends StatefulWidget {
  @override
  _ModesState createState() => _ModesState();
}

class _ModesState extends State<Modes> {
  @override
  Widget build(BuildContext context) {
    
    bool dM =Provider.of<ModesProvider>(context).darkMode;
    return Container(
      child: FlutterSwitch(
            width: 55.0,
            height: 25.0,
            valueFontSize: 8.0,
            toggleSize: 22.0,
            value: dM,
            borderRadius: 15.0,
            padding: 3.0,
            showOnOff: false,
            activeColor: mCC,
            onToggle: (bool val) {
              setState(() {
                Provider.of<ModesProvider>(context, listen: false).changeMode(val);
              });
            },
          ),
    );
  }
}
