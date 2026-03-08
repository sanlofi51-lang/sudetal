import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.openSans(fontSize: 12.sp, color: Colors.grey),
            ),
             SizedBox(height: 6.h),
            Text(
              time,
              style: GoogleFonts.ptSans(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
             SizedBox(height: 6.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.circle,
                    size: 8.sp,
                    color: color,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(width: 3.h),
                  Text(
                    status,
                    style: GoogleFonts.openSans(
                      color: color,
                      fontSize: 12.sp,
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
