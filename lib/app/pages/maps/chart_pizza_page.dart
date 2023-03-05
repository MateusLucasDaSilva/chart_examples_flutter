// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPizzaPage extends StatefulWidget {
  const ChartPizzaPage({Key? key}) : super(key: key);

  @override
  State<ChartPizzaPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<ChartPizzaPage> {
  late List<Data> _chatdata;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chatdata = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCircularChart(
          title: ChartTitle(text: 'Grafico de Pizaa'),
          legend: Legend(
              isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            PieSeries<Data, String>(
              dataSource: _chatdata,
              xValueMapper: (Data data, _) => data.name,
              yValueMapper: (Data data, _) => data.number,
              dataLabelSettings:const DataLabelSettings(isVisible: true),
              enableTooltip: true,
            )
          ],
        ),
      ),
    );
  }

  List<Data> getChartData() {
    return [
      Data(name: 'Bitcoin', number: 500),
      Data(name: 'Dogecoin', number: 400),
      Data(name: 'Ethereum', number: 800),
      Data(name: 'Cardano', number: 600),
      Data(name: 'Solana', number: 300),
      Data(name: 'Binance coin', number: 550),
    ];
  }
}

class Data {
  final String name;
  final int number;
  Data({
    required this.name,
    required this.number,
  });
}
