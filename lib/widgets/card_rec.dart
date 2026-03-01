import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardRec extends StatelessWidget {
  CardRec({
    super.key,
    required this.title,
    required this.time,
    required this.status,
    required this.color,
  });
  String title;
  String time;
  String status;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.openSans(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 6),
            Text(
              time,
              style: GoogleFonts.ptSans(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color:color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: color,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(width: 3,),
                  Text(
                    status,
                    style: GoogleFonts.openSans(
                      color: color,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
