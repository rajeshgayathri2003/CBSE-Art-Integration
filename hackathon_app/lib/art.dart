import 'package:flutter/material.dart';

class Aipans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                  child: Text(
                'Art of Aipans',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10.0)),
                  Image(
                    image: AssetImage('assets/aipan1.png'),
                    height: 300.0,
                    width: 400.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/aipan2.jpg',
                    ),
                    height: 300.0,
                    width: 400.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/aipan2.jpg',
                    ),
                    height: 300.0,
                    width: 400.0,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
