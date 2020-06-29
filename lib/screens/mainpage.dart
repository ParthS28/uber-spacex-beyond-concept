import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:uber/screens/earth.dart';
import 'package:uber/screens/jupiter.dart';
import 'package:uber/screens/mars.dart';
import 'package:uber/screens/settings.dart';
import 'package:uber/screens/uranus.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> planets = ['Earth', 'Mars', 'Jupiter', 'Uranus'];
  List<String> img = [
    'images/earth.jpg',
    'images/mars.jpg',
    'images/jupiter.jpeg',
    'images/uranus.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('beyond', style: TextStyle(color: Color(0xFF5AE0FC)),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(OMIcons.arrowBack, color: Color(0xFF5AE0FC)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(OMIcons.settings, color: Color(0xFF5AE0FC)),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => Settings()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/space.jpeg'), fit: BoxFit.cover)
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return buildPlanet(planets[index], img[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget buildPlanet(String name, String imgName) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        handleGesture(name);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//            height: 200.0,
        width: width - 20,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgName), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              width: width - 10,
            ),
            Container(
                height: 50,
                width: width - 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                ),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(OMIcons.search),
                    ),
                    Text('Search $name'),
                    Spacer(),
                    IconButton(
                      icon: Icon(OMIcons.mic),
                    )
                  ],
                )),
            Spacer(),
            Container(
              child: buildInfo(name),
              height: 100,
              width: width - 20,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20)
                ),
            )
          ],
        ),
      ),
    );
  }

  void handleGesture(String name) {
    if (name == 'Earth') {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => EarthPage()));
    } else if (name == 'Mars') {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => MarsPage()));
    } else if (name == 'Jupiter') {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => JupiterPage()));
    } else if (name == 'Uranus') {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => UranusPage()));
    }
  }

  Widget buildInfo(String name) {
    if(name == 'Earth') {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(OMIcons.directionsCar, color: Colors.red,),
                SizedBox(width: 10,),
                Text('High', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Icon(OMIcons.cloud, color: Colors.deepOrangeAccent,),
                SizedBox(width: 10,),
                Text('Toxic', style: TextStyle(fontSize: 20, color: Colors.white))
              ],
            )
          ],
        ),
      );
    }
    else if(name == 'Mars') {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(OMIcons.directionsCar, color: Colors.orange,),
                SizedBox(width: 10,),
                Text('Medium', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Icon(OMIcons.cloud, color: Colors.grey,),
                SizedBox(width: 10,),
                Text('Cloudy', style: TextStyle(fontSize: 20, color: Colors.white))
              ],
            )
          ],
        ),
      );
    }
    else if(name == 'Jupiter') {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(OMIcons.directionsCar, color: Colors.green,),
                SizedBox(width: 10,),
                Text('Low', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Icon(OMIcons.cloud, color: Colors.red,),
                SizedBox(width: 10,),
                Text('Harsh', style: TextStyle(fontSize: 20, color: Colors.white))
              ],
            )
          ],
        ),
      );
    }
    else if(name == 'Uranus') {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(OMIcons.directionsCar, color: Colors.green,),
                SizedBox(width: 10,),
                Text('Low', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Icon(OMIcons.cloud, color: Colors.blueGrey,),
                SizedBox(width: 10,),
                Text('Chilly', style: TextStyle(fontSize: 20, color: Colors.white))
              ],
            )
          ],
        ),
      );
    }
  }
}
