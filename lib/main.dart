import 'package:flutter/material.dart';
import 'package:navigator/audio_offline.dart';
import 'package:navigator/audio_online.dart';
import 'package:navigator/video_offline.dart';
import 'package:navigator/video_online.dart';
import 'package:fluttertoast/fluttertoast.dart';

void MyLinkedIn() {
  Fluttertoast.showToast(
      msg: "Connect with me",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.amberAccent.shade400,
      textColor: Colors.blueGrey,
      fontSize: 16.0);
}

void MySearch() {
  Fluttertoast.showToast(
      msg: "Search Music",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.amberAccent.shade400,
      textColor: Colors.blueGrey,
      fontSize: 16.0);
}

void main() {
  runApp(MaterialApp(
    title: 'Audio Video Player',
    home: HomeRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer (Menu Button)
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                ),
                color: Colors.amber,
              ),
              child: Text(
                "Welcome to Gaana Bajana\n\nThe App provides you the Facilities to play Audio & Video both Online and Offline :)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  width: double.infinity,
                  child: RaisedButton(
                    shape: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.blueGrey,
                    ),
                    // Navigator
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AudioPlayerOffline(),
                        ),
                      );
                    },
                    child: Card(
                      shadowColor: Colors.yellow,
                      elevation: 10,
                      child: Text(
                        "Music<Offline>",
                        style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Colors.blueGrey.shade100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  width: double.infinity,
                  child: RaisedButton(
                    shape: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AudioPlayerOnline(),
                        ),
                      );
                    },
                    child: Card(
                      shadowColor: Colors.yellow,
                      elevation: 10,
                      child: Text(
                        "Music<Online>",
                        style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Colors.blueGrey.shade100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: double.infinity,
                  child: RaisedButton(
                    shape: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.blueGrey,
                    ),
                    // Navigator
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoPlayerOffline()),
                      );
                    },
                    child: Card(
                      shadowColor: Colors.yellow,
                      elevation: 10,
                      child: Text(
                        "Video<Offline>",
                        style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Colors.blueGrey.shade100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: double.infinity,
                  child: RaisedButton(
                    shape: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.blueGrey,
                    ),
                    // Navigator
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoPlayerApp()),
                      );
                    },
                    child: Card(
                      shadowColor: Colors.yellow,
                      elevation: 10,
                      child: Text(
                        "Video<Online>",
                        style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Colors.blueGrey.shade100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // AppBar Part
      appBar: AppBar(
        // bottom : uses the appbar bottom space for better ui
        bottom: PreferredSize(
          child: Icon(
            Icons.linear_scale,
            size: 40.0,
            color: Colors.white70,
          ),
          preferredSize: Size.fromHeight(30.0),
        ),
        // Brightness : set appbar brightness
        brightness: Brightness.light,
        shape: RoundedRectangleBorder(
          /*  borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20.0), right: Radius.circular(20.0)),
    ),
    */
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
        ),
        title: Text("Gaana Bajana"),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.contact_mail), onPressed: MyLinkedIn),
          IconButton(icon: Icon(Icons.search), onPressed: MySearch),
        ],
      ),
      // Body Part
      body: Container(
        // make every child on the center
        alignment: Alignment.center,
        //  color: Colors.grey.shade300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://thewallpaper.co//wp-content/uploads/2016/01/hd-nature-wallpapers-landscape-natural-images-green-nature-background-images-nature-wallpapers-wallpaper-download-free-images-1366x768.jpg"),
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              // gola outside
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber.shade600,
                border: Border.all(color: Colors.grey.shade400, width: 3),
              ),
              width: 300,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sourabh kr. choudhary",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.email),
                      Text("  sourabhskc30@gmail.com")
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/sourabhskc/flutter_class/master/pp.jpg'),
                ),
                border: Border.all(
                  color: Colors.amber,
                  width: 3,
                ),
              ),
              // color: Colors.red,
              width: 100,
              height: 100,
              // child: ,
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Second Route"),
      ),
    );
  }
}
