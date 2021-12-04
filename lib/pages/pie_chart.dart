import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:pie_chart/pie_chart.dart';

class Pie extends StatefulWidget {
  @override
  _PieState createState() => _PieState();
}

class _PieState extends State<Pie> {

  Map kk={};
  List m;
  @override
  Widget build(BuildContext context) {
    kk=ModalRoute.of(context).settings.arguments;
    m=kk['listt2'];
    Map<String, double> dataMap = {
      "Total Active": (double.parse('${m[m.length-1]['totalconfirmed']}')-double.parse('${m[m.length-1]['totalrecovered']}'))-double.parse('${m[m.length-1]['totaldeceased']}'),
      "Total Recovered": double.parse('${m[m.length-1]['totalrecovered']}'),
      "Total Deaths": double.parse('${m[m.length-1]['totaldeceased']}'),

    };
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Pie chart Analysis",style: TextStyle(color: Colors.grey[900]),),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 1000),
          chartLegendSpacing: 40,
          chartRadius: MediaQuery.of(context).size.width / 1.3,
          colorList: [Colors.yellowAccent[400],Colors.greenAccent[700],Colors.redAccent[400]],
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          ringStrokeWidth: 40,
          centerText: "Covid-19 India",
          legendOptions: LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.bottom,
            showLegends: true,
            legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amberAccent[100],
              fontSize: 18,
            ),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: true,
            showChartValuesInPercentage: true,
            showChartValuesOutside: false,
            chartValueBackgroundColor: Colors.transparent,
            chartValueStyle: TextStyle(color: Colors.orangeAccent[200],fontSize: 15,fontWeight: FontWeight.bold),
            decimalPlaces: 0,

          ),
        ),
      )
    );
  }
}
