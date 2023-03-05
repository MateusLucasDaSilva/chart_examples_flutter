import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartAreaPage extends StatefulWidget {

  const ChartAreaPage({ Key? key }) : super(key: key);

  @override
  State<ChartAreaPage> createState() => _ChartAreaPageState();
}

class _ChartAreaPageState extends State<ChartAreaPage> {


  @override
  Widget build(BuildContext context) {
    final List<Data> chartData = [
      Data(1, 350),
      Data(2, 180),
      Data(3, 220),
      Data(4, 290),
      Data(5, 210)
    ];
    return Scaffold(
        body: Center(
            child: SfCartesianChart(
              title: ChartTitle(text: 'Grafico de Aréa'),
      primaryYAxis: NumericAxis(
        // axis interval is set to 10
        interval: 100,
      ),
      series: <ChartSeries<Data, int>>[
        AreaSeries<Data, int>(
          dataSource: chartData,
          xValueMapper: (Data data, _) => data.x,
          yValueMapper: (Data data, _) => data.y,
          dataLabelSettings:const DataLabelSettings(isVisible: true),
        ),
      ],
    )));
  }
}

class Data {
  Data(this.x, this.y);
  final int x;
  final double y;
}
