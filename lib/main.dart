import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'moss3ad432@gmail.com',
        queryParameters: {
          'subject': 'This is a subject',
          'body': 'This is a body'
        });
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            child: Text(
              'Card ',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.teal[900],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              Text(
                'Mohamed Mosaad',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Android Developer'.toUpperCase(),
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    color: Colors.teal.shade100,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              FlatButton(
                onPressed: () {
                  launch('tel://01126110446');
                },
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+20 01126 110 446',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  launch(_emailLaunchUri.toString());
                },
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'moss3ad432@gmail',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
