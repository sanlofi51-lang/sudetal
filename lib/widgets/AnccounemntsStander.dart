import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sudan/generated/l10n.dart';
import 'package:sudan/widgets/Announcements_widget.dart';
import 'package:intl/intl.dart';

class AnnouncementsPageStander extends StatelessWidget {
  const AnnouncementsPageStander({super.key});
  bool isArabic() {
    return Intl.getCurrentLocale() == "en";
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 140),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 251, 255),
          borderRadius: BorderRadius.circular(16),
        ),

        child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  S.of(context).announcemnts,
                  style: GoogleFonts.ptSans(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: 5,
                  itemBuilder: (context, index) => Dismissible(
                    key: ValueKey(index),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      alignment: isArabic()
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      color: const Color.fromARGB(223, 224, 48, 32),
                      child: const HugeIcon(
                        icon: HugeIcons.strokeRoundedDelete02,
                        color: Colors.white,
                      ),
                    ),

                    child: const AnnouncementsWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
