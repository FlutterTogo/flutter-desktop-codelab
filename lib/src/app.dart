import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../src/pages/dashboard.dart';

class YoProApp extends StatelessWidget {
  const YoProApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData.light(),
      title: 'YoPro Desktop',
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
