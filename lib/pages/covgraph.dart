import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class Covgraph extends StatefulWidget {
  @override
  _CovgraphState createState() => _CovgraphState();
}

class _CovgraphState extends State<Covgraph> {
  Map kk={};
  var m;

  List<double> k=[];
  List<double> o=[];
  List<double> p=[];
  @override
  Widget build(BuildContext context) {

    kk=ModalRoute.of(context).settings.arguments;
    m=kk['listt'];
    for(int i=0;i<m.length;i++)
      {
        k.add(double.parse('${m[i]['dailyconfirmed']}'));
      }
    for(int i=0;i<m.length;i++)
    {
      o.add(double.parse('${m[i]['dailyrecovered']}'));
    }
    for(int i=0;i<m.length;i++)
    {
      p.add(double.parse('${m[i]['dailydeceased']}'));
    }
    print(m);


    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.yellow[600],
        title: Text('Graphical Analysis',style: TextStyle(color: Colors.grey[700]),) ,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),

      ),
      body:ListView(
        children: [Center(
          child: Container(
            child: Column(
              children: [
              SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.transparent,
                    elevation: 2,
                   shadowColor: Colors.grey[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft:Radius.circular(20) ,
                            topLeft:Radius.circular(20) ,
                            topRight: Radius.circular(20)),

                        side: BorderSide(width: 1, color: Colors.lightBlueAccent[700])),
                  child: Container(
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Sparkline(
                      data:k,
                        lineWidth: 2,
                        fillMode: FillMode.below,
                        fillGradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.yellowAccent[700], Colors.yellowAccent[100]],
                      ),

            ),
                    ),
                  ),
              ),
                ),
                Text('Daily New Cases',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.yellowAccent),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                    Card(
                      color: Colors.transparent,
                      elevation: 2,
                      shadowColor: Colors.grey[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft:Radius.circular(20) ,
                              topLeft:Radius.circular(20) ,
                              topRight: Radius.circular(20)),

                          side: BorderSide(width: 1, color:  Colors.lightBlueAccent[700])),
                      child: Container(
                        height: 400,

                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Sparkline(
                            data:o,
                            fillMode: FillMode.below,
                            lineWidth: 2,
                            fillGradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.green[800], Colors.green[200]],
                            ),

                          ),
                        ),
                      ),
                    ),
                  ),

                Text('Daily Recovered Cases',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent[700]),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 2,
                    color: Colors.transparent,
                    shadowColor: Colors.grey[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft:Radius.circular(20) ,
                            topLeft:Radius.circular(20) ,
                            topRight: Radius.circular(20)),

                        side: BorderSide(width: 1, color:  Colors.lightBlueAccent[700])),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        height: 400,
                        child: Sparkline(

                          data:p,
                          lineWidth: 2,
                          fillMode: FillMode.below,
                          fillGradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.redAccent[700], Colors.red[200]],
                          ),

                        ),
                      ),
                    ),
                  ),
                ),
                Text('Daily Unfortunate Deaths',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.redAccent[400]),),
                SizedBox(height: 30,),
            ],










            ),
          ),
        ),
       ],
      ),
    );
  }
}
