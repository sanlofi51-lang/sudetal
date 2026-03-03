import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sudan/generated/l10n.dart';

class Balance extends StatelessWidget {
  Balance({super.key, required this.title, required this.value});
  String title;
  int value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.openSans(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              "$value"
              " ${S.of(context).day}",
              style: GoogleFonts.ptSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
