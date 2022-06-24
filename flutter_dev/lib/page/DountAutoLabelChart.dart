// import 'package:flutter/material.dart';
// // import 'package:charts_flutter/flutter.dart' as charts;
//
// class DountAutoLabelChart extends StatelessWidget {
//   final List<charts.Series<dynamic, int>> seriesList;
//   final bool? animate;
//
//   const DountAutoLabelChart(this.seriesList, { this.animate });
//
//   factory DountAutoLabelChart.withSampleData() {
//     return DountAutoLabelChart(_createSamleData(), animate: false,);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return charts.PieChart<int>(
//       seriesList,
//       animate: animate,
//       defaultRenderer: charts.ArcRendererConfig(
//         arcWidth: 60 ,
//         arcRendererDecorators: [charts.ArcLabelDecorator()],
//       ),
//     );
//   }
//
//   static List<charts.Series<LinearSales, int>> _createSamleData() {
//     final data = [
//       LinearSales(0, 100),
//       LinearSales(1, 10),
//       LinearSales(2, 66),
//       LinearSales(3, 15),
//     ];
//
//     return [
//       charts.Series<LinearSales, int>(
//         id: 'Sales',
//         data: data,
//         domainFn: (LinearSales sales, _) => sales.year,
//         measureFn: (LinearSales sales, _) => sales.sales,
//         labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.sales}',)
//     ];
//   }
// }
//
// class LinearSales {
//   final int year;
//   final int sales;
//
//   LinearSales(this.year, this.sales);
// }
