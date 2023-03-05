import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartAxisPage extends StatefulWidget {
  const ChartAxisPage({Key? key}) : super(key: key);

  @override
  State<ChartAxisPage> createState() => ChartAxisPageState();
}

class ChartAxisPageState extends State<ChartAxisPage> {


  @override
  Widget build(BuildContext context) {
    final List<Data> chartData = [
      Data(1, 235),
      Data(2, 242),
      Data(3, 320),
      Data(4, 360),
      Data(5, 270)
    ];
    return Scaffold(
        body: Center(
            child: SfCartesianChart(
              title: ChartTitle(text: 'Grafico de Columa'),
      primaryYAxis: NumericAxis(
        // axis interval is set to 10
        interval: 100,
      ),
      series: <ChartSeries<Data, int>>[
        ColumnSeries<Data, int>(
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
