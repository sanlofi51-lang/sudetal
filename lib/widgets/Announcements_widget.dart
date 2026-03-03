import 'package:flutter/material.dart';
import 'package:sudan/generated/l10n.dart';

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
              S.of(context).annhead,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            Text(
              S.of(context).annmead,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),

            SizedBox(height: 14),

            Text(
              S.of(context).anndate,
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
