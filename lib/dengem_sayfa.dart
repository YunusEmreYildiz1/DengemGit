import 'package:flutter/material.dart';
import 'package:untitled6/introduction.dart';

void main() {
  runApp(MaterialApp(
    home: Dengem(),
  ));
}

class Dengem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8B70FB),
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Introduction()),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 180,
                height: 180,
                child: Center(
                  child: Image.asset('assets/images/dengem.png'),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 120,
                height: 50,
                child: Center(
                  child: Image.asset('assets/images/dengemyazi.png'),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}