import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChartPage extends StatefulWidget {
  const MyPieChartPage({super.key});

  @override
  State<MyPieChartPage> createState() => _MyPieChartPageState();
}

class _MyPieChartPageState extends State<MyPieChartPage> {
  // Example data
  Map<String, double> dataMap = {
    "DBL Bank": 3,
    "BRC Bank": 3,
    "ABM Bank": 3,
    "MCP Bank": 3,
  };

  List<Color> colorList = [
    const Color(0xFFE5E7EB),
    const Color(0xFF3B82F6),
    const Color(0xFF1E3A8A),
    const Color(0xFF60A5FA),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PieChart(
          dataMap: dataMap,
          animationDuration: const Duration(milliseconds: 800),
          chartLegendSpacing: 22,
          chartRadius: MediaQuery.of(context).size.width / 2.8,
          colorList: colorList,
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          ringStrokeWidth: 32, // Only applicable for ChartType.ring
          legendOptions: const LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: false,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: false,
            showChartValuesInPercentage: false,
            showChartValuesOutside: true,
            decimalPlaces: 1,
          ),
          // You can also add more options here
          // like baseChartColor, totalValue, etc.
        ),
      ),
    );
  }
}