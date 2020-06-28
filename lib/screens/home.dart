import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:uber/screens/mainpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(

                children: <Widget>[
                  Spacer(),
                  Image(
                    image: AssetImage('images/uber.png'), height: 150, width: 150,
                  ),
                  Spacer(),
                  Text('x', style: TextStyle(fontSize: 20, color: Colors.white), ),  // TODO
                  Spacer(),
                  Image(
                    image: AssetImage('images/spacex.jpg',), height: 150, width: 150,
                  ),
                  Spacer()
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                child: Text('Present', style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image(
                image: AssetImage('images/logo.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Text('beyond', style: TextStyle(color: Color(0xFF5AE0FC), fontSize: 48),),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: FlatButton(

                child: Text(
                  'Book Ride', style: TextStyle(color: Color(0xFF5AE0FC), fontSize: 20,),
                ),
                onPressed: () {
                  Navigator.push(context, CupertinoPageRoute(
                      builder: (context) => MainPage()
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
