import 'package:flutter/material.dart';

class Homelist extends StatefulWidget {
  @override
  _HomelistState createState() => _HomelistState();
}

class _HomelistState extends State<Homelist> {

  Map kk = {};
  Map bk = {};
  List m;
  List sub;


  @override
  Widget build(BuildContext context) {
    kk = ModalRoute.of(context).settings.arguments;
    m=kk['listt'];
    bk = kk['index'];
    int u=m.indexOf(bk);
    sub=m.sublist(0,u+2);

    return SafeArea(
      child:
      Container(

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/cor.jpg'), fit: BoxFit.cover)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 5,
            backgroundColor: Colors.orange[700],
            title: Text('CovidOmeter'),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(35),
              ),
            ),

          ),
          body: Stack(
            children: [
              ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          SizedBox(height: 30,),
                          Container(

                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30.0),bottom:Radius.circular(30.0) ),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/tira.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),


                            width: 400,
                            height: 80,

                          ),
                          SizedBox(height: 10,),

                          Text('India',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.redAccent[700]),),
                          SizedBox(height: 35,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                color: Colors.transparent,
                                elevation: 2,

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),

                                    side: BorderSide(
                                        width: 1, color: Colors.yellow[700])),
                                child: Container(
                                  width: 165,
                                  height: 120,
                                  child: Center(
                                      child:
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          Text('Daily Confirmed',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.yellowAccent),),
                                          SizedBox(height: 5,),
                                          Text('${bk['dailyconfirmed']}',
                                            style: TextStyle(fontSize: 25,
                                                color: Colors
                                                    .yellowAccent[100]),),
                                        ],
                                      )),
                                ),
                              ),
                              Card(
                                color: Colors.transparent,
                                elevation: 2,

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),

                                    side: BorderSide(
                                        width: 1, color: Colors.yellow[700])),
                                child: Container(

                                  width: 165,
                                  height: 120,
                                  child: Center(
                                      child:
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          Text('Daily Recovered',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors
                                                    .greenAccent[700]),),
                                          SizedBox(height: 5,),
                                          Text('${bk['dailyrecovered']}',
                                            style: TextStyle(fontSize: 25,
                                                color: Colors
                                                    .greenAccent[200]),),
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Card(
                            color: Colors.transparent,
                            elevation: 5,


                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),

                                side: BorderSide(
                                    width: 1, color: Colors.yellow[700])),
                            child: Container(
                              width: 275,
                              height: 90,
                              child: Center(
                                  child:
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Daily Deaths', style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent),),
                                      SizedBox(height: 5,),
                                      Text('${bk['dailydeceased']}',
                                        style: TextStyle(fontSize: 25,
                                            color: Colors.redAccent[100]),),
                                    ],
                                  )),
                            ),
                          ),
                          SizedBox(height: 25,),
                          Text('${bk['date']}', style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[300]),),
                          SizedBox(height: 30,),
                          Card(
                            color: Colors.transparent,
                            shadowColor: Colors.orange[300],
                            elevation: 2,


                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft:Radius.circular(30) ,
                                    topLeft:Radius.circular(30) ,
                                    topRight: Radius.circular(30)),

                                side: BorderSide(width: 1, color: Colors.yellow[700])),
                            child: ExpansionTile(
                              leading: Image.asset('assets/mas.jpg'),
                              title: Center(child: Text('Total Till This Date',
                                style: TextStyle(fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber),)),
                              children: [
                                SizedBox(height: 30,),

                                Card(
                                  color: Colors.transparent,
                                  elevation: 5,


                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),

                                      side: BorderSide(
                                          width: 1, color: Colors.yellow[700])),
                                  child: Container(
                                    width: 350,
                                    height: 90,
                                    child: Center(
                                        child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Text('Total Cases Confirmed',
                                              style: TextStyle(fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.yellowAccent),),
                                            SizedBox(height: 5,),
                                            Text('${bk['totalconfirmed']}',
                                              style: TextStyle(fontSize: 25,
                                                  color: Colors
                                                      .yellowAccent[100]),),
                                          ],
                                        )),
                                  ),
                                ),
                                Card(
                                  color: Colors.transparent,
                                  elevation: 5,


                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),

                                      side: BorderSide(
                                          width: 1, color: Colors.yellow[700])),
                                  child: Container(
                                    width: 350,
                                    height: 90, child: Center(
                                      child:
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          Text('Total Recoveries',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.greenAccent),),
                                          SizedBox(height: 5,),
                                          Text('${bk['totalrecovered']}',
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.greenAccent[100]),),
                                        ],
                                      )),
                                  ),
                                ),
                                Card(
                                  color: Colors.transparent,
                                  elevation: 5,


                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),

                                      side: BorderSide(
                                          width: 1, color: Colors.yellow[700])),
                                  child: Container(
                                    width: 350,
                                    height: 90,
                                    child: Center(
                                        child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Text('Total Deaths', style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.redAccent),),
                                            SizedBox(height: 5,),
                                            Text('${bk['totaldeceased']}',
                                              style: TextStyle(fontSize: 25,
                                                  color: Colors.redAccent[100]),),

                                          ],

                                        )),
                                  ),
                                ),

                                SizedBox(height: 30,),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          FlatButton(
                            color: Colors.transparent,
                            splashColor:Colors.orange[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft:Radius.circular(30) ,
                                    topLeft:Radius.circular(30) ,
                                    topRight: Radius.circular(30)),

                                side: BorderSide(width: 1, color: Colors.yellow[700])),

                            onPressed: () {
                              Navigator.pushNamed(context,'/covgraph',arguments:{
                                'listt':sub,

                              });
                            },
                            child: Text(
                              "Graphical analysis",
                              style: TextStyle(fontStyle: FontStyle.italic,color: Colors.purpleAccent[100],fontSize: 15),
                            ),
                          ),
                          SizedBox(height: 10,),



                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                  ]
              ),
            ],
          ),


        ),
      ),


    );
  }
}