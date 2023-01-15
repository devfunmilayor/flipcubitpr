// ignore_for_file: prefer_const_constructors

import 'package:flipcubitpr/core/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/color_screen.dart';

void main() {
  runApp(MultiProvider(providers: allProvider, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: true,
      home: ColorScreen(),
    );
  }
}
