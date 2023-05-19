import 'pages/booking_show.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'pages/start_page.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'pages/book_now.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

var location = 'Faridabad';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: Color(0xFF9D50DD),
        ledColor: Colors.white,
        playSound: true,
        enableVibration: true,
      )
    ],
    debug: true,
  );
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: '/start',
      routes: {
        '/home': (context) => HomePage(),
        '/start': (context) => Start_page(),
        '/booking': (context) => Booking_page(),
        '/profile': (context) => Profile_page(),
        '/login': (context) => Login_page(),
        '/register': (context) => Register_page(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  int indexpage = 0;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<StatefulWidget> screens = [
    Home_page(),
    Booking_page(),
    Profile_page()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF003AA8),
        elevation: 0.0,
        currentIndex: widget.indexpage,
        onTap: (index) {
          setState(() {
            widget.indexpage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF003AA8),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Color(0xFF003AA8),
            ),
            label: 'Your Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF003AA8),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: screens[widget.indexpage],
    );
  }
}
