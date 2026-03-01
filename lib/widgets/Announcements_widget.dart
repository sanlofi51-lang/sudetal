import 'package:flutter/material.dart';

class AnnouncementsWidget extends StatelessWidget {
  const AnnouncementsWidget({super.key});

  @override
  Widget build(context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Asma Hamrawy got promoted to UX Team Lead!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            Text(
              "Congratulate Asma Hamrawy for her recent promotion "
              "from Senior UX Designer to UX Team Lead.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),

            SizedBox(height: 14),

            Text(
              "17 Monday, February 2025",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
