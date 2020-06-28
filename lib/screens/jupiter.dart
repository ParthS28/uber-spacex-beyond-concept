import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class JupiterPage extends StatefulWidget {
  @override
  _JupiterPageState createState() => _JupiterPageState();
}

class _JupiterPageState extends State<JupiterPage> {
  List<String> options = ['UberX Supreme', 'Rent-A-Rocket', 'Uber Green'];
  List<String> img = [
    'images/spacepod.png',
    'images/rocket.jpg',
    'images/greenspace.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Jupiter', style: TextStyle(color: Color(0xFF5AE0FC)),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(OMIcons.arrowBack,color: Color(0xFF5AE0FC)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(

//        child: Padding(
//        padding: EdgeInsets.only(),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                image: DecorationImage(image: AssetImage('images/jupiter.jpeg'), fit: BoxFit.cover)
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Spacer(),
                Container(
                  height: 400,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          colors: [Color(0xFF79F7FC), Color(0xFF48C5FC)],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Container(
                      height: 200,
//                    width: width - 20,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return buildOptions(options[index], img[index]);
                        },
                      )),
                )
              ],
            ),
          )
//      ),
      ),
    );
  }

  Widget buildOptions(String option, String name) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        return AlertDialog(
          title: Text(
            'Booked',
            style: TextStyle(color: Color(0xFFee5573)),
          ),
          elevation: 24,
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            FlatButton(
              child: Text('Okay'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: height / 4,
          width: width - 30,
          child: Column(
            children: <Widget>[
              Spacer(),
              Row(
                children: <Widget>[
                  Image(
                    image: AssetImage(name),
                    height: 50,
                    width: (width - 30) * 0.33,
                  ),
                  Spacer(),
                  Text(
                    '$option',
                    style: TextStyle(color: Color(0xFF5AE0FC)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(padding:EdgeInsets.only(left: 10, right: 10),child: Text('\$300')),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  '60 km',
                                  style: TextStyle(color: Color(0xff6CF3E0)),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(padding: EdgeInsets.only(left: 10, right: 10),child: Text('45 mins')),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                      ),
                      child: FlatButton(
                        color: Color(0xff000000),
                        child: Text(
                          'Book',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
