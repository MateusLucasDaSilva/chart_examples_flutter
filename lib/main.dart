import 'package:flutter/material.dart';
import 'package:flutter_chart/app/pages/charts/chart_area_page.dart';
import 'package:flutter_chart/app/pages/charts/chart_axis_page.dart';
import 'package:flutter_chart/app/pages/charts/chart_linear_page.dart';
import 'package:flutter_chart/app/pages/charts/chart_pizza_page.dart';
import 'package:flutter_chart/app/pages/dashboard/dashboard.dart';

import 'app/pages/home/home_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_)=>const HomePage(),
        '/dashboard': (_)=>const Dashboard(),
        '/pizza': (_)=>const ChartPizzaPage(),
        '/area': (_)=>const ChartAreaPage(),
        '/axis': (_)=>const ChartAxisPage(),
        '/linear': (_)=>const ChartLinearPage(),
      },
    );
  }
}
