import 'package:flutter/material.dart';

class DayPage extends StatelessWidget {
  static const routeName = '/lights';


  const DayPage({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(color: Colors.black,)

//            child: DayPage(),
      ),
    );
  }
}
