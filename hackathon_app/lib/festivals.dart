import 'package:flutter/material.dart';

class Festival extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                  child: Text(
                'Religion & Temples',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Wrap(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                    width: 30.0,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Image(
                    image: AssetImage(
                      'assets/festival2.jpg',
                    ),
                    height: 300.0,
                    width: 400.0,
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Image(
                    image: AssetImage('assets/shiva.png'),
                    height: 300.0,
                    width: 400.0,
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/festival1.jpg',
                    ),
                    height: 300.0,
                    width: 400.0,
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Uttarakhand is famous for its temples dedicated to lord Shiva. The Katarmal temple in Almora is a Sun temple. This temple was built during the reign of the second Katyuri King Katarmal Dev. Besides being a sun temple, this temple also houses idols of the Hindu deities Shiva and Vishnu.',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'At the Bajinath Temple, Shiva is worshipped as Vaidyanatha, the Lord of the Physicians. This temple also depicts the slaying of demon Mahishasura by Goddess Kali and was erected by King Laxmichand around 1450 CE. Pilgrims also visit the Patal Bhuwaneshwar temple seeking the road that will lead them to Mount Kailash, the heavenly abode of Lord Shiva. Devotees also worship the Lord as Bineshwar at the Binsar Mahadev Temple. ',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'The Jageshwar group of Temples have a unique architectural style that dates back to the 9th century CE. It is customary for pilgrims on the Kailash Mansarovar route to pray at this temple before they proceed with their journey ahead.',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Another popular destination is the Baleshwar temple at Champawat. This temple is an extraordinary example of atone architecture and temple design.',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
