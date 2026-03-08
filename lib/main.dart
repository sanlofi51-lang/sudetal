import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sudan/provider/locael_prov.dart';
import 'generated/l10n.dart';
import 'package:sudan/screen/login_page.dart';
import 'package:provider/provider.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color(0XFF0075C8),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: const Sudatel(),
    ),
  );
}

class Sudatel extends StatelessWidget {
  const Sudatel({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    return ScreenUtilInit(minTextAdapt: true,splitScreenMode: true,designSize: Size(500 , 800),builder: 
    
    
    (context,child){
        return MaterialApp(
      locale: localeProvider.locale,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: theme,
      home: LoginPage(),
    );}
    
    ,);
   
  }
}
