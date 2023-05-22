import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/my_htpps_overrides.dart';

void main() {
   HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
      
      colorScheme: theme.colorScheme.copyWith(
        primary: Colors.purple,
        secondary: Colors.deepOrange,
        ),
      ),
      home: ProductsOverviewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

