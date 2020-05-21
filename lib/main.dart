import 'package:flutter/material.dart';
import 'package:flutterappui/calculator.dart';
import 'package:flutterappui/homepage.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';


Color primaryBlack = Color(0xff202c3b);


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      DynamicTheme(
        data: (brightness){
          return ThemeData(
              primaryColor: primaryBlack,
              brightness: brightness == Brightness.light
                  ? Brightness.light
                  : Brightness.dark,
              scaffoldBackgroundColor: brightness == Brightness.dark
                  ? Colors.blueGrey[900]
                  : Colors.white);
        },
        themedWidgetBuilder: (context,theme){

          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: SimpleCalculator(),
          );
        },

      );
  }
}