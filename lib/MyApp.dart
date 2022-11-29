import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _test = "";
  final testEditingController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    String a = "1";
    return MaterialApp(
        key: _scaffoldKey,
        title: "test",
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            tooltip: "asdasd",
            onPressed: () {  },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            title: Text("Test app"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle_outlined),
                onPressed: () {

                },
              )
            ],
          ),
          body: SafeArea(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        _test,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: testEditingController,
                        onChanged: (text) {

                          _scaffoldKey.currentState?.showSnackBar(
                              SnackBar(
                                content: Text('sadasd'),
                                duration: Duration(seconds: 3),
                              )
                          );
                          this.setState(() {
                            _test = text;
                          });


                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(10)
                                )
                            ),
                            labelText: "Input test"
                        ),
                      ),
                    )
                  ],
                )
            ),
          )
        ));
  }
}
