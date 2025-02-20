import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:texi_concept/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, screenType, srientation) => MaterialApp(
         debugShowCheckedModeBanner: false,
        title: 'Taxi App',
        theme: ThemeData(
          textTheme:  GoogleFonts.poppinsTextTheme(),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
