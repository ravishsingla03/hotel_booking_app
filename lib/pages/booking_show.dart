import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking_page extends StatefulWidget {
  @override
  State<Booking_page> createState() => _Booking_pageState();
}

class _Booking_pageState extends State<Booking_page> {
  String hotelname = "";

  final _auth = FirebaseAuth.instance;

  final _firestore = FirebaseFirestore.instance;

  late User loggedInUser;

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

  var bookingdata = [];

  void getbookings() async {
    // bookingdata.clear();
    final bookings = await _firestore
        .collection('users')
        .doc(loggedInUser.email)
        .collection('bookings')
        .get();
    setState(() {
      List bookinglist = bookings.docs;
      List newBookingList = [];
      for (int i = 0; i < bookinglist.length; i++) {
        if (!newBookingList.contains(bookinglist[i].data())) {
          newBookingList.add(bookinglist[i].data());
        }
      }
      bookingdata = newBookingList;
    });
    // print(bookingdata);
    // print(bookingdata.length);
  }

  @override
  void initState() {
    GetCurrentUser();
    getbookings();
  }

  @override
  Widget build(BuildContext context) {
    GetCurrentUser();
    // getbookings();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Bookings',
              style: TextStyle(fontSize: 25),
            ),
          ),
          backgroundColor: Color(0xFF003AA8),
        ),
        body: ListView.builder(
          itemCount: bookingdata.length,
          itemBuilder: ((context, index) {
            return Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              bookingdata[index]["Hotel"],
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9),
                            child: Text(
                              "Rooms: " +
                                  bookingdata[index]["rooms"].toString(),
                              style: GoogleFonts.aboreto(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Adults: " +
                                  bookingdata[index]["adults"].toString(),
                              style: GoogleFonts.aboreto(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Children: " +
                                  bookingdata[index]["children"].toString(),
                              style: GoogleFonts.aboreto(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Price: " +
                                  bookingdata[index]["price"].toString(),
                              style: GoogleFonts.aboreto(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "From: " +
                                  bookingdata[index]["checkin"].toString(),
                              style: GoogleFonts.aboreto(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Till: " +
                                  bookingdata[index]["checkout"].toString(),
                              style: GoogleFonts.aboreto(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
