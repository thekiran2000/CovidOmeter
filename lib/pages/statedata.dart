import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class statedata{

  List covid2;
  String dconf;
  String ddec;
  String drecover;
  String ddate;
  String tconf;
  String tdec;
  String trecover;

  statedata();

  void getcase()async
  {
    Response response=await get("https://api.covid19india.org/data.json");
    Map data=jsonDecode(response.body);
    print(data);
    covid2=data['statewise'];
  }


}