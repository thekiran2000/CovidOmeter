import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class coviddata{

  List covid;
  String dconf;
  String ddec;
  String drecover;
  String ddate;
  String tconf;
  String tdec;
  String trecover;



  coviddata();

  void getdata()async
  {
    Response response=await get("https://api.covid19india.org/data.json");
    Map data=jsonDecode(response.body);
    print(data);
    covid=data['cases_time_series'];
  }


}