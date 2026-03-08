import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sudan/generated/l10n.dart';

class AlertScreen extends StatelessWidget {
  AlertScreen({super.key, required this.early});
  bool early;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(244, 241, 239, 239),
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: early ? 380.h : 230.h,
        minWidth: 800.h,
      ),

      child: SingleChildScrollView(
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      early
                          ? S.of(context).outbounders
                          : S.of(context).alerthours,
                      style: GoogleFonts.ptSans(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    if (early)
                      Text(
                        S.of(context).currentlocationtext,
                        style: GoogleFonts.openSans(
                          fontSize: 14.sp,

                          color: Colors.grey,
                        ),
                      ),
                    SizedBox(height: 10.h),

                    if (early)
                      TextField(
                        maxLines: 4,

                        decoration: InputDecoration(
                          hintText: S.of(context).currentlocationtext,
                          filled: true,

                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            gapPadding: 12,
                          ),
                        ),
                      ),

                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        HugeIcon(
                          icon: HugeIcons.strokeRoundedInformationCircle,
                          color: Color.fromARGB(255, 126, 2, 2),
                          size: 14.sp,
                        ),
                        SizedBox(width: 3.h),
                        Text(
                          S.of(context).alerthours,
                          style: GoogleFonts.openSans(
                            fontSize: 14.sp,

                            color: const Color.fromARGB(255, 126, 2, 2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: double.infinity,
                      height: 51.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 0, 100, 1),
                            Color.fromARGB(255, 43, 0, 200),
                            Color.fromARGB(255, 43, 0, 200),
                          ],
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          S.of(context).Confirm,
                          style: TextStyle(fontSize: 18.sp, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                      width: double.infinity,
                      height: 50.h,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          side: BorderSide(
                            color: const Color.fromARGB(255, 9, 79, 136),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          S.of(context).cancel,
                          style: TextStyle(
                            color: Color(0xff1D23D3),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
