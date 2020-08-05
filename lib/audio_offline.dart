import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AudioPlayerOffline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHome();
  }
}

void VideoButton() {
  Fluttertoast.showToast(
      msg: "Video Library",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.amberAccent.shade400,
      textColor: Colors.blueGrey,
      fontSize: 16.0);
}

void MusicButton() {
  Fluttertoast.showToast(
      msg: "Music Library",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.amberAccent.shade400,
      textColor: Colors.blueGrey,
      fontSize: 16.0);
}

void MenuButton() {
  Fluttertoast.showToast(
      msg: "MENU",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.amberAccent.shade400,
      textColor: Colors.blueGrey,
      fontSize: 16.0);
}

void PlayFloatingButton() {
  Fluttertoast.showToast(
      msg: "Play Button",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.amberAccent.shade400,
      textColor: Colors.blueGrey,
      fontSize: 16.0);
}

// Main function
MyHome() {
  return MaterialApp(
    home: Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text("Offline Audio Player"),
        //  leading: IconButton(icon: Icon(Icons.menu), onPressed: MenuButton),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.library_music), onPressed: MusicButton),
          IconButton(icon: Icon(Icons.video_library), onPressed: VideoButton),
        ],
        backgroundColor: Colors.amber,
      ),
      // floating Action Button
      floatingActionButton: IconButton(
          iconSize: 50,
          color: Colors.amber,
          icon: Icon(
            Icons.play_circle_filled,
          ),
          onPressed: PlayFloatingButton),

      // Body
      body: MyBody(),
    ),
    debugShowCheckedModeBanner: false,
  );
}

MyBody() {
  var audioPlayer = AudioPlayer();

  /// for passing to AudioCache to use all basic functionality like
  /// pause, stop, seek, resume
  var advancedPlayer = AudioPlayer();
  var player = AudioCache(fixedPlayer: advancedPlayer);

  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade300,
    margin: EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        Container(
          child: Card(
            child: Image.asset(
              'images/music.jpg',
              fit: BoxFit.fill,
            ),
            shape: Border.all(color: Colors.amber, width: 3),
            color: Colors.blueGrey,
            shadowColor: Colors.red,
            elevation: 20,
          ),
        ),
        Container(
          width: 300,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.blueGrey,
                child: Card(
                    child: IconButton(
                        icon: Icon(Icons.play_arrow), onPressed: null)),
                onPressed: () {
                  print("Audio Player clicked !");
                  //   var player = AudioCache();
                  player.play('krishna.mp3');
                },
                elevation: 10,
              ),
              RaisedButton(
                color: Colors.blueGrey,
                child: Card(
                    child:
                        IconButton(icon: Icon(Icons.pause), onPressed: null)),
                //  textColor: Colors.white,
                onPressed: () {
                  print("Audio Player paused !");
                  advancedPlayer.pause();
                },
                elevation: 10,
              ),
              RaisedButton(
                color: Colors.blueGrey,
                child: Card(
                    child: IconButton(icon: Icon(Icons.stop), onPressed: null)),
                //  textColor: Colors.white,
                onPressed: () {
                  print("Audio Player stoped !");
                  advancedPlayer.stop();
                },
                elevation: 10,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
