import 'package:flutter/material.dart';
import 'package:flutter_chart/app/pages/maps/chart_axis_page.dart';
import 'package:flutter_chart/app/pages/maps/chart_linear_page.dart';
import 'package:flutter_chart/app/pages/maps/chart_area_page.dart';
import 'package:flutter_chart/app/pages/maps/chart_pizza_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/maps');
            },
            icon: const Icon(Icons.add)),
        body: Center(
          child: Container(
            height: size.height * .9,
            width: size.width * .5,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: LayoutBuilder(
              builder: (_, constraints) {
                return SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: constraints.maxHeight * .5,
                            width: constraints.maxWidth * .5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(30)),
                            child: const ChartPizzaPage(),
                          ),
                          Container(
                            height: constraints.maxHeight * .5,
                            width: constraints.maxWidth * .5,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const ChartAxisPage(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: constraints.maxHeight * .5,
                            width: constraints.maxWidth * .5,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const ChartLinearPage(),
                          ),
                          Container(
                            height: constraints.maxHeight * .5,
                            width: constraints.maxWidth * .5,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30),
                              
                            ),
                            child:const ChartAreaPage(),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
