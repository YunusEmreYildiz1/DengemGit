import 'package:flutter/material.dart';

void main() {
  runApp(Breathe());
}

class Breathe extends StatefulWidget {
  @override
  _BreatheState createState() => _BreatheState();
}

class _BreatheState extends State<Breathe> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  String _statusText = "Nefes Al";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    _animation = Tween<double>(begin: 70.0, end: 200.0).animate(_controller)
      ..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          setState(() {
            _statusText = "Nefes Ver";
          });
          await Future.delayed(Duration(seconds: 1));
          _controller.duration = Duration(seconds: 3);
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          setState(() {
            _statusText = "Nefes Al";
          });
          await Future.delayed(Duration(seconds: 1));
          _controller.duration = Duration(seconds: 5);
          _controller.forward();
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _statusText,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Container(
                            width: _animation.value,
                            height: _animation.value,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(73, 155, 39, 176),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
