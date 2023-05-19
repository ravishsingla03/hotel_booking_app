import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_2/widgets.dart';

import 'dart:io';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  File? imageTemporary;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return null;
      final imageTemporary = File(image.path);
      setState(() {
        this.imageTemporary = imageTemporary;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Row(
              children: [
                Text("Ravish Singla",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    pickImage();
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: imageTemporary == null
                          ? DecorationImage(
                              image:
                                  AssetImage('assets/images/profilelogo.jpg'),
                              fit: BoxFit.cover)
                          : DecorationImage(
                              image: FileImage(imageTemporary!),
                              fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4),
                            blurRadius: 10.0)
                      ],
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          SizedBox(height: 5),
          Profile_wid(text: "Change Password", icon: Icons.lock, index: 0),
          SizedBox(height: 5),
          Profile_wid(
              text: "Your Bookings", icon: Icons.calendar_month, index: 1),
          SizedBox(height: 5),
          Profile_wid(text: "Help & Support", icon: Icons.help, index: 0),
          SizedBox(height: 5),
          Profile_wid(text: "Log Out", icon: Icons.logout, index: 2),
          SizedBox(height: 5),
          Profile_wid(text: "Settings", icon: Icons.settings, index: 0),
        ],
      )),
    );
  }
}
