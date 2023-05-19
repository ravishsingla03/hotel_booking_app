import 'package:flutter/material.dart';
import 'package:project_2/main.dart';

class Location_screen extends StatelessWidget {
  const Location_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text('Available Cities',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  location = "Delhi";
                  Navigator.pushNamed(context, "/home");
                },
                child: Text('Delhi',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  location = "Shimla";
                  Navigator.pushNamed(context, "/home");
                },
                child: Text('Shimla', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  location = "Panipat";
                  Navigator.pushNamed(context, "/home");
                },
                child: Text('Panipat', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  location = "Faridabad";
                  Navigator.pushNamed(context, "/home");
                },
                child: Text('Faridabad', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  location = "Chandigarh";
                  Navigator.pushNamed(context, "/home");
                },
                child: Text('Chandigarh', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
