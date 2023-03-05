import 'package:flutter/material.dart';
import 'package:flutter_chart/app/pages/charts/chart_axis_page.dart';
import 'package:flutter_chart/app/pages/charts/chart_linear_page.dart';
import 'package:flutter_chart/app/pages/charts/chart_area_page.dart';
import 'package:flutter_chart/app/pages/charts/chart_pizza_page.dart';

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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/pizza');
            },
            icon: const Icon(Icons.circle_rounded),
          ),
           IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/axis');
            },
            icon: const Icon(Icons.view_column),
          ),
           IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/linear');
            },
            icon: const Icon(Icons.line_axis_sharp),
          ),
           IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/area');
            },
            icon: const Icon(Icons.area_chart_outlined),
          ),
          
        ],
      ),
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
                          child: const ChartAreaPage(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
