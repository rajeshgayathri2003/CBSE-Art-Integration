import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int photoIndex = 0;
  List<String> photos = [
    'assets/uk1.jpg',
    'assets/uk2.jpg',
    'assets/uk3.jpg',
    'assets/uk4.jpg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Opacity(
              opacity: 0.3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/uk2.jpg'), fit: BoxFit.fill),
                ),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                              image: AssetImage(photos[photoIndex]),
                              fit: BoxFit.cover)),
                      height: 400.0,
                      width: 300.0,
                    ),
                    Positioned(
                        top: 375.0,
                        left: 25.0,
                        right: 25.0,
                        child: SelectedPhoto(
                          numberOfDots: photos.length,
                          photoIndex: photoIndex,
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Back'),
                      onPressed: _previousImage,
                      elevation: 5.0,
                      color: Colors.blueAccent),
                  SizedBox(
                    width: 10.0,
                  ),
                  RaisedButton(
                      child: Text('Next'),
                      onPressed: _nextImage,
                      elevation: 5.0,
                      color: Colors.blueAccent),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                    width: 30.0,
                  ),
                  Text(
                    'Uttarakhand is a beautiful state that is located in the lap of the Himalayas. Aptly described as the ‘Land of the Gods’, Uttarakhand is sure to leave travelers spell bound with its towering mountains, scenic landscapes, breath-taking valleys, crystal clear lakes and rich cultural diversity. It wouldn’t be wrong to say that Uttarakhand is the embodiment of the Indian spirit.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 30.0,
                  ),
                  Text(
                    'The state offers a wide variety of tourist attractions. From adventure sports to wildlife safaris, from religious and spiritual tourism to monuments that talk about the history of the land, the list is endless. This puts it at the top of everyone’s travel plan.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    width: 30.0,
                  ),
                  Text(
                    'Uttarakhand also offers many exciting opportunities to nature enthusiasts. The ‘Jim Corbett Tiger Conservation Park’, the ‘Asan Wetland Conservation Reserve’, UNESCO World Heritage Sites like the ‘Valley of Flowers’ and ‘Nanda Devi Biosphere Reserve’.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 30.0,
                  ),
                  Text(
                    'The ‘Ramman’ festival celebrated in this Himalayan state has also been featured in the Representative List of the Intangible Cultural Heritage of Humanity. The Kumbh Mela attracts more than a million visitors every twelfth year.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                    height: 50.0,
                  ),
                  Text(
                    'These factors make Uttarakhand a dream destination for one and all.',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ])));
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
      child: new Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: Container(
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.0,
                blurRadius: 2.0,
              )
            ]),
      ),
    ));
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
