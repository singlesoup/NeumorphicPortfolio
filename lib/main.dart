import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/decor.dart';
import 'last.dart';
import 'middle.dart';
import 'bottomSheetDesign.dart';
import 'modes.dart';
import 'provider/modes_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ModesProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void onButtonPressed(BuildContext ctx) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        context: ctx,
        builder: (_) {
          return BottomSheetDesign();
        });
  }

  @override
  Widget build(BuildContext context) {
    bool darkmode = Provider.of<ModesProvider>(context).darkMode;
    return Scaffold(
      backgroundColor: darkmode == false ? mC : dmC,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 10,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration:
                        darkmode == false ? outerBoxEffect : outerBoxEffectD,
                    child: IconButton(
                      color: darkmode == false ? fCL : fCD,
                      icon: Icon(
                        Icons.share,
                      ),
                      onPressed: () {
                        onButtonPressed(context);
                      },
                    ),
                  ),
                ],
              ),
              MiddlePart(),
              LastPart(),
              SizedBox(height: 5),
              // GestureDetector(
              //     onTap: () {
              //       onButtonPressed(context);
              //     },
              //     child: DraggableIcon()),
              Modes(),
            ],
          ),
        ),
      ),
    );
  }
}
