import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 100,
            width: width,
            child: Row(
              children: <Widget>[
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  child: OutlineButton.icon(
                    icon: Icon(OMIcons.link),
                    label: Text('GITHUB',
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.black)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    onPressed: () {
                      launch('https://github.com/ParthS28');
                    },
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
