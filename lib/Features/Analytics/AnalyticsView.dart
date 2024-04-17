import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Analytics",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Transaction Overview",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.white30,
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const Text(
                                  "Mar",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Image.asset("assets/images/arrow-right.png")
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "12%",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.green),
                              ),
                              Image.asset("assets/images/arrow-up-green.png")
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      barChart(context),
                      Divider(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text("Income"),
                      SizedBox(width: 150),
                      Text("Expense")
                    ],
                  ),
                ),
                splineChart(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget barChart(BuildContext context) {
  final List<ChartData> chartData = <ChartData>[
    ChartData('week 1', 12800, 8090),
    ChartData('week 2', 12300, 9200),
    ChartData('week 3', 10700, 10200),
    ChartData('week 4', 11000, 9500),
  ];
  return Center(
      child: Container(
          child: SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              series: <CartesianSeries>[
        ColumnSeries<ChartData, String>(
            color: const Color(0xffdd5302),
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y),
        ColumnSeries<ChartData, String>(
            color: const Color(0xffffb13b),
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y1),
      ])));
}

class ChartData {
  ChartData(
    this.x,
    this.y,
    this.y1,
  );
  final String x;
  final double? y;
  final double? y1;
}

@override
Widget splineChart(BuildContext context) {
  final List<ChartDatas> chartData = <ChartDatas>[
    ChartDatas(1, 10.53),
    ChartDatas(2, 9.5),
    ChartDatas(3, 10),
    ChartDatas(4, 9.4),
  ];

  return Center(
      child: Container(
          child: SfCartesianChart(series: <CartesianSeries>[
    SplineAreaSeries<ChartDatas, int>(
        borderWidth: 5.0,
        borderColor: Color(0xff1A56DB),
        color: Color(0xff1A56DB).withOpacity(0.3),
        dataSource: chartData,
        xValueMapper: (ChartDatas data, _) => data.x,
        yValueMapper: (ChartDatas data, _) => data.y)
  ])));
}

class ChartDatas {
  ChartDatas(
    this.x,
    this.y,
  );
  final int x;
  final double? y;
}
