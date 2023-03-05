import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartLinearPage extends StatefulWidget {
  const ChartLinearPage({Key? key}) : super(key: key);

  @override
  State<ChartLinearPage> createState() => _MapsLegendPageState();
}

class _MapsLegendPageState extends State<ChartLinearPage> {
   @override
    Widget build(BuildContext context) {
      final List<ChartData> chartData = <ChartData>[
        ChartData(1, 24),
        ChartData(2, 20),
        ChartData(3, 35),
        ChartData(4, 27),
        ChartData(5, 30),
        ChartData(6, 41),
        ChartData(7, 26)
      ];
      return Scaffold(
        body: SfCartesianChart(
          title: ChartTitle(text: 'Grafico de linha ') ,
          primaryXAxis: NumericAxis(
            
            // 
          ),
          series: <ChartSeries<ChartData, int>>[
            LineSeries<ChartData, int>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
            )
          ]
        )
      );
    }
}
    class ChartData {
      ChartData(this.x, this.y);
        final int x;
        final int y;
    }

