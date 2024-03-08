import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartHome extends StatelessWidget {
  const BarChartHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 17),
            child: Text(
              "Gastos nos últimos meses",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1.5,
            child: BarChart(
              BarChartData(
                borderData: FlBorderData(
                  border: const Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  ),
                ),
                groupsSpace: 5,
                barGroups: [
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(
                          toY: 2850.50, width: 20, color: Colors.red),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(toY: 10, width: 20, color: Colors.red),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(toY: 10, width: 20, color: Colors.red),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(toY: 10, width: 20, color: Colors.red),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    showingTooltipIndicators: [1],
                    barRods: [
                      BarChartRodData(toY: 10, width: 20, color: Colors.red),
                    ],
                  ),
                ],
              ),
              swapAnimationDuration:
                  const Duration(milliseconds: 150), // Optional
              swapAnimationCurve: Curves.linear, // Optional
            ),
          ),
        ],
      ),
    );
  }
}
