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
              Wrap(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                    width: 30.0,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Image(
                    image: AssetImage('assets/aipan3.png'),
                    height: 300.0,
                    width: 400.0,
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
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
                    width: 10.0,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/aipan1.png',
                    ),
                    height: 300.0,
                    width: 400.0,
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Text(
                    'Derived from the word ‘Arpan’ meaning dedication, the traditional Aipan stands as a symbol of devotion and auspiciousness. The Aipan is a ritualistic folk art that is native to the Kumaon region of Uttarakhand. It is drawn to commemorate festive occasions as well as more somber occasions like death of a person.',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Text(
                    'Drawn using red mud or ‘geru’ and the designs are made using rice flour which is white in colour. The creation of an Aipan begins and ends with a dot; the dot symbolizing the center of the universe. All lines and patterns emerge from this single dot and this represents the shifting form of the universe.',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Text(
                    'Using only three of their five fingers, the women create beautiful patterns that revolve around various themes. These motifs and designs are inspired by the religious beliefs of the community. One common motif used is the feet of Goddess Lakshmi, the Hindu Goddess of wealth and prosperity. Natural elements like flowers, creepers, fish and birds are also a part of the designs. Religious motifs like conch shell, mandap and kalash are also prominently seen.',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                  ),
                  Text(
                    'Today, the Aipan is being reinvented. It is seen not only on doors and walls; it is also being included in pieces of clothing and other items of daily use.',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
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
