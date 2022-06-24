// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
//
// class SimpleBarChart extends StatelessWidget {
//   final List<charts.Series<dynamic, String>> seriesList;
//   final bool? animate;
//
//   const SimpleBarChart(this.seriesList, { this.animate });
//
//   factory SimpleBarChart.withSampleData() {
//     return SimpleBarChart(
//       _createSampleData(),
//     animate: false,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return charts.BarChart(seriesList, animate: animate,);
//   }
//
//   static List<charts.Series<OrdinalSales, String>> _createSampleData() {
//     final data = [
//       OrdinalSales('2014', 35),
//       OrdinalSales('2015', 25),
//       OrdinalSales('2016', 100),
//       OrdinalSales('2017', 75),
//     ];
//    return [
//       charts.Series<OrdinalSales, String>(
//         id: 'Sales',
//         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: data,
//       )
//     ];
//   }
// }
//
// class OrdinalSales {
//   final String year;
//   final int sales;
//
//   OrdinalSales(this.year, this.sales);
// }
//
