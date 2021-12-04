import 'package:covidometer/pages/citylist.dart';
import 'package:covidometer/pages/covgraph.dart';
import 'package:covidometer/pages/covidlist.dart';
import 'package:covidometer/pages/home.dart';
import 'package:covidometer/pages/homelist.dart';
import 'package:covidometer/pages/loading.dart';
import 'package:covidometer/pages/pie_chart.dart';
import 'package:covidometer/pages/statehome.dart';
import 'package:covidometer/pages/statelist.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      "/": (context)=>Loading(),
      "/home": (context)=>Home(),
      "/covidlist": (context)=>Covidlist(),
      "/homelist": (context)=>Homelist(),
      "/covgraph": (context)=>Covgraph(),
      "/statelist": (context)=>Statelist(),
      "/statehome": (context)=>Statehome(),
      "/citylist": (context)=>Citylist(),
      "/piechart": (context)=>Pie(),

    },
  ));
}
