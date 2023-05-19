import 'package:flutter/material.dart';
import 'dart:math';
import 'models/hotel.dart';
import 'main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class aminities extends StatelessWidget {
  var icon;
  String text;
  aminities({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2.0, 3.0),
                  blurRadius: 5.0,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Center(
              child: Icon(
                icon,
                size: 20,
                color: Color(0xFF003AA8).withOpacity(0.8),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 10,
              letterSpacing: 1.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF003AA8).withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}

class Hotel_pack extends StatelessWidget {
  int index = 0;
  Hotel_pack({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 4.0),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                height: 130,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(ravish[location]![index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    ravish[location]![index].title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    ravish[location]![index].description,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    ravish[location]![index].price + '/night',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.directions_car,
                          color: Color(0xFF003AA8),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.hot_tub,
                          color: Color(0xFF003AA8),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.local_bar,
                          color: Color(0xFF003AA8),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Color(0xFF003AA8),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              left: 300,
              child: Center(
                child: Transform.rotate(
                  angle: pi / -2,
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15.0,
                          offset: Offset(2.0, 4.4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: .2),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Profile_wid extends StatelessWidget {
  String text;
  var icon;
  int index = 0;
  Profile_wid({required this.text, this.icon, required this.index});
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 2) {
          _auth.signOut();
          Navigator.popUntil(context, ModalRoute.withName('/start'));
        }
        if (index == 1) {
          Navigator.pushNamed(context, '/booking');
        }
      },
      child: Container(
        alignment: Alignment.centerLeft,
        height: 70,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                )),
            Icon(icon)
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
