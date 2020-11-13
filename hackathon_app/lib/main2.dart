import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Home Page'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override //the build function will override the original build method
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File imageFile;
  _openGallery(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {});
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {});
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Gallery'),
                    onTap: () {
                      _openGallery(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: Text('Camera'),
                    onTap: () {
                      _openCamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: '5NrYqZCjpN0',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ));
  Widget _decideImageview() {
    if (imageFile == null) {
      return Text('No Image Selected');
    } else {
      return Image.file(
        imageFile,
        width: 400,
        height: 400,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _decideImageview(),
              RaisedButton(
                onPressed: () {
                  _showChoiceDialog(context);
                },
                child: Text('Click to add image'),
              ),
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ],
          )),
        ));
  }
}
// Widget build(BuildContext context) {
//return Scaffold(
//appBar: AppBar(
// title: Text('Hello'),
// centerTitle: true,
//backgroundColor: Colors.red[600],
//),
//body: Center(
//child: Text('Welcome',
//style: TextStyle(
//fontSize: 20.0,
//fontWeight: FontWeight.bold,
//letterSpacing: 2.0,
//color: Colors.grey,
//fontFamily: 'SourceSansPro',
//))),
//child: Image.network(
//'https://images.unsplash.com/photo-1546833999-b9f581a1996d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')),
//child: Icon(
//Icons.airport_shuttle,
//color: Colors.lightBlue,
//size: 50.0,
//)),
//child: FlatButton(
//onPressed: () {
///print('you clicked me');
//},
//child: Text('click me'),
//)),
//floatingActionButton: FloatingActionButton(
//child: Text('click me'),
//onPressed: () {},
//backgroundColor: Colors.red[600],
//));
//}
//}
//
