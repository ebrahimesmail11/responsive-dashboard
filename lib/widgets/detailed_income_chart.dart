

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 1,
      child:  PieChart(
          getChartData(),
        ),
    
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sections: [
          PieChartSectionData(
                      color:const  Color(0xFF208BC7),
                      value: 40,
                      radius:activeIndex == 0 ? 60 : 50,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      color: const  Color(0xFF4DB7F2),
                      showTitle: false,
                      value: 25,
                      radius: activeIndex == 1 ? 60 : 50,
                    ),
                    PieChartSectionData(
                      color: const  Color(0xFF064060),
                      value: 20,
                      radius: activeIndex == 2 ? 60 : 50,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      color: const  Color(0xFFE2DECD),
                      value: 22,
                      radius: activeIndex == 3 ? 60 : 50,
                      showTitle: false,
                    ),
      ],
          sectionsSpace: 0,
                  pieTouchData: PieTouchData(
                    enabled: true,
                    touchCallback: (p0, pieTouchResponse) {
                   activeIndex =   pieTouchResponse?.touchedSection?.touchedSectionIndex??-1;
                   setState(() {
                     
                   });
                    },
                  ),
                  borderData: FlBorderData(show: false),
    );
  }
}