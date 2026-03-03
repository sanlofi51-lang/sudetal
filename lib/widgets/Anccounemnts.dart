import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sudan/generated/l10n.dart';
import 'package:sudan/widgets/Announcements_widget.dart';

class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 140),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(245, 250, 251, 251),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          S.of(context).announcemnts,
                          style: GoogleFonts.ptSans(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ),
                    SizedBox(height: 20,),

                    Container(
                      width: double.infinity,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          AnnouncementsWidget(),
                          AnnouncementsWidget(),
                          AnnouncementsWidget(),
                          AnnouncementsWidget(),
                          AnnouncementsWidget(),
                        ],
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
