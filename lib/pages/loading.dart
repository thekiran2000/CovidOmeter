
import 'package:covidometer/pages/coviddata.dart';
import 'package:flutter/material.dart';
import 'package:covidometer/pages/statedata.dart';



class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setup()async{
    coviddata inst=coviddata();
    await inst.getdata();
    statedata inst2=statedata();
    await inst2.getcase();

    Navigator.pushReplacementNamed(context, "/home",arguments: {
      'listt':inst.covid,
      'listt2':inst2.covid2,

    });
//    print(inst.covid);
    print(inst2.covid2);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setup();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/meter.gif',height: 180,width: 240,),
          SizedBox(height: 0,),
          Text('CovidOmeter',style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),),
        ],
      )),
    );
  }
}
