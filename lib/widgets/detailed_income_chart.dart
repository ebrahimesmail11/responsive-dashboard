

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

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
                      titlePositionPercentageOffset: activeIndex == 0 ?1.5: null,
                    title: activeIndex == 0 ?'Design service': '40%',
                      radius:activeIndex == 0 ? 60 : 50,
                      value: 40,
                      titleStyle: AppStyles.styleMedium16(context).copyWith(color: activeIndex == 0 ?null: Colors.white),
                    ),
                    PieChartSectionData(
                      color: const  Color(0xFF4DB7F2),
                      titlePositionPercentageOffset: activeIndex == 1 ?2.2: null,
                      titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 1 ?null: Colors.white),
                      title: activeIndex == 1? 'Design product':'25%',
                      value: 25,
                      radius: activeIndex == 1 ? 60 : 50,
                    ),
                    PieChartSectionData(
                      color: const  Color(0xFF064060),
                      titlePositionPercentageOffset: activeIndex == 2 ?1.3: null,
                      title: activeIndex == 2? 'Product royalti':'20%',
                      radius: activeIndex == 2 ? 60 : 50,
                      value: 20,
                      titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 2 ?null: Colors.white),
                    ),
                    PieChartSectionData(
                      color: const  Color(0xFFE2DECD),
                      titlePositionPercentageOffset: activeIndex == 3 ?1.4: null,
                      title:activeIndex == 3? 'Other':'22%',
                      radius: activeIndex == 3 ? 60 : 50,
                      value: 22,
                      titleStyle: AppStyles.styleMedium16(context).copyWith(color: activeIndex == 3 ?null: Colors.white),
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