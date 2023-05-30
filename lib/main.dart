import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_loanmarket/widgets/bottombar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Technical Loan Market',
      // remove debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Add google font for the entire apps
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const BottomBarWidget(),
    );
  }
}
