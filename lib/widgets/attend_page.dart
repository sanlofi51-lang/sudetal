import 'package:flutter/material.dart';

class AttendPage extends StatefulWidget {
  const AttendPage({super.key});

  @override
  State<AttendPage> createState() => _AttendPageState();
}

class _AttendPageState extends State<AttendPage> {
  double leftPosition = 0;
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            left: leftPosition,
            top: 200,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  leftPosition = leftPosition == 0 ? 200 : 0;
                });
              },
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
