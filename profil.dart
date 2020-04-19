import 'dart:ui';

import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: MyProfil(),
    );
  }
}

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'profil',
            child: CircleAvatar(
              backgroundImage: AssetImage('images/user2.jpeg'),
              radius: 80,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 180,
            child: Divider(
              color: Colors.white,
              thickness: 6,
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Ida bagus putu surya adiwiyasa'),
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('gustusurya226@gmail.com'),
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }
}
