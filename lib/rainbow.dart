import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'staticVariables.dart';

class DayPage extends StatelessWidget {
  static const routeName = '/lights';


  const DayPage({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Flutter Lights")
        ],
      )
    ),),
      body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: Statics.MAX_WIDTH),
            child: Column(
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Container(margin: const EdgeInsets.only(top: 20.0, right: 20.0),
                          child: Text("Rainbow",style: TextStyle(fontSize: 20,),)),
                      Container(
                        color: Colors.green,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              _rainbow();
                            },
                            child: const Text('Rainbow'),
                          ),
                        ],
                      ),
                      // Image.asset('assets/card-sample-image.jpg'),
                      // Image.asset('assets/card-sample-image-2.jpg'),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Container(margin: const EdgeInsets.only(top: 20.0, right: 20.0),
                          child: Text("Custom",style: TextStyle(fontSize: 20,),)),
                      Container(
                        color: Colors.green,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [

                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              _custom();
                            },
                            child: const Text('Custom'),
                          ),
                        ],
                      ),
                      // Image.asset('assets/card-sample-image.jpg'),
                      // Image.asset('assets/card-sample-image-2.jpg'),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Container(margin: const EdgeInsets.only(top: 20.0, right: 20.0),
                          child: Text("Stop",style: TextStyle(fontSize: 20,),)),
                      Container(
                        color: Colors.green,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [

                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              _stop();
                            },
                            child: const Text('Stop'),
                          ),
                        ],
                      ),
                      // Image.asset('assets/card-sample-image.jpg'),
                      // Image.asset('assets/card-sample-image-2.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }

  _rainbow() async {
    print("rainbow");
    http.get('http://192.168.0.10:4000/neo/rainbow');
  }

  _stop() async {
    print("stop");
    http.get('http://192.168.0.10:4000/neo/stop');
  }

  _custom() async {
    print("custom");
  print(jsonEncode(<String, int>{
    'r': 250,
    'g': 141,
    'b': 105,
  }).toString());
    http.post(
      'http://192.168.0.10:4000/neo/custom',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, int>{
        'r': 250,
        'g': 141,
        'b': 105,
      }),
    );
  }
}
