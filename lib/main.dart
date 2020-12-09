import 'package:flutter/material.dart';
import './overview.dart';

void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterLights',
      initialRoute: '/',
      onGenerateRoute: (settings) {


          // Then, extract the required data from the arguments and
          // pass the data to the correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return Overview(

              );
            },
          );},

      home: Overview(),);
  }
}

