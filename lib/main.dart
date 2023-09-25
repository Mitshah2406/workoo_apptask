import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workoo_apptask/screens/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: const MaterialColor(0xff6750A4, {
              50: Color(0xff6750A4), // You can customize shades here
              100: Color(0xff6750A4),
              200: Color(0xff6750A4),
              300: Color(0xff6750A4),
              400: Color(0xff6750A4),
              500: Color(0xff6750A4), // Primary color
              600: Color(0xff6750A4),
              700: Color(0xff6750A4),
              800: Color(0xff6750A4),
              900: Color(0xff6750A4),
            }),
          ),
          debugShowCheckedModeBanner: false,
          home: Tabs()),
    );
  }
}
