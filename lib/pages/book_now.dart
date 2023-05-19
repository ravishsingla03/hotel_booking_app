import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'booking_show.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Book_Now extends StatefulWidget {
  String name;
  String price;
  Book_Now({required this.name, required this.price});

  @override
  State<Book_Now> createState() =>
      _Book_NowState(hotelname: name, price: price);
}

class _Book_NowState extends State<Book_Now> {
  String hotelname;
  String price;
  Map<String, dynamic> data = {
    'Hotel': '',
    'price': '',
    'checkin': '',
    'checkout': '',
    'rooms': '',
    'adults': '',
    'children': '',
  };
  _Book_NowState({required this.hotelname, required this.price});
  int count = 1;
  int count1 = 1;
  int count2 = 0;
  DateTime checkInDate = DateTime.now();
  DateTime checkOutDate = DateTime.now();
  late User loggedInUser;
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  void GetCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  

  void trigger() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      locked: true,
      id: 10,
      channelKey: 'basic_channel',
      title: 'Booking Confirmed',
      body:
          'Your hotel booking has been confirmed. Please review your booking details and let us know if you have any questions or concerns. We are looking forward to hosting you soon!',
      notificationLayout: NotificationLayout.BigText,
    ));
  }

  @override
  void initState() {
    GetCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF003AA8),
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Booking Page',
              style: TextStyle(fontSize: 23),
            ),
          ),
        ),
        body: Column(children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "No.of Rooms",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              FloatingActionButton(
                backgroundColor: Color(0xFF003AA8),
                onPressed: () {
                  setState(() {
                    if (count > 1) {
                      count--;
                    }
                  });
                },
                child: Icon(
                  Icons.remove,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Color(0xFF003AA8),
                onPressed: () {
                  setState(() {
                    if (count < 10) {
                      count++;
                    }
                  });
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "No.of Adults",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              FloatingActionButton(
                backgroundColor: Color(0xFF003AA8),
                onPressed: () {
                  setState(() {
                    if (count1 > 1) {
                      count1--;
                    }
                  });
                },
                child: Icon(
                  Icons.remove,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  count1.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Color(0xFF003AA8),
                onPressed: () {
                  setState(() {
                    if (count1 < 10) {
                      count1++;
                    }
                  });
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "No.of Childrens",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              FloatingActionButton(
                backgroundColor: Color(0xFF003AA8),
                onPressed: () {
                  setState(() {
                    if (count2 > 0) {
                      count2--;
                    }
                  });
                },
                child: Icon(
                  Icons.remove,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  count2.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Color(0xFF003AA8),
                onPressed: () {
                  setState(() {
                    if (count2 < 10) {
                      count2++;
                    }
                  });
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Check In",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2023, 12, 31),
                  ).then((value) {
                    setState(() {
                      checkInDate = value!;
                    });
                  });
                },
                style: ButtonStyle(),
                icon: Icon(
                  Icons.calendar_today,
                  color: Color(0xFF003AA8),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 5),
                child: Text(
                  checkInDate.toString().substring(0, 10),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: checkInDate,
                    firstDate: checkInDate,
                    lastDate: DateTime(2023, 12, 31),
                  ).then((value) {
                    setState(() {
                      checkOutDate = value!;
                    });
                  });
                },
                style: ButtonStyle(),
                icon: Icon(
                  Icons.calendar_today,
                  color: Color(0xFF003AA8),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 5),
                child: Text(
                  checkOutDate.toString().substring(0, 10),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              trigger();
              data['rooms'] = count;
              data['adults'] = count1;
              data['children'] = count2;
              data['checkin'] = checkInDate.toString().substring(0, 10);
              data['checkout'] = checkOutDate.toString().substring(0, 10);
              data['Hotel'] = hotelname;
              data['price'] = price;
              await _firestore
                  .collection('users')
                  .doc(loggedInUser.email)
                  .collection('bookings')
                  .doc()
                  .set(data);
                  
              Navigator.pushNamed(context, "/home");
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xFF003AA8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "BOOK",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
