import 'package:flutter/material.dart';

class Statehome extends StatefulWidget {
  @override
  _StatehomeState createState() => _StatehomeState();
}

class _StatehomeState extends State<Statehome> {
  Map kk = {};
  Map bk = {};
  List m;



  @override
  Widget build(BuildContext context) {
    kk = ModalRoute.of(context).settings.arguments;
    m=kk['listt2'];
    bk = kk['index'];


    return SafeArea(
      child:
      Container(

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/${bk['state']}.jpg'), fit: BoxFit.cover)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 3,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.grey[500],
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

                          SizedBox(height: 50,),
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

                          Center(
                            child: Card( elevation:2,
                                color: Colors.transparent,
                                shadowColor: Colors.black54,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),

                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('${bk['state']}',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.yellowAccent[700]),),
                                )),
                          ),
                          SizedBox(height: 50,),
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
                                          Text('Total Confirmed',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.yellowAccent),),
                                          SizedBox(height: 5,),
                                          Text('${bk['confirmed']}',
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
                                          Text('Total Recovered',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors
                                                    .greenAccent[700]),),
                                          SizedBox(height: 5,),
                                          Text('${bk['recovered']}',
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
                            elevation: 2,


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
                                      Text('Total Deaths', style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent),),
                                      SizedBox(height: 5,),
                                      Text('${bk['deaths']}',
                                        style: TextStyle(fontSize: 25,
                                            color: Colors.redAccent[400],fontWeight: FontWeight.bold),),
                                    ],
                                  )),
                            ),
                          ),
                          SizedBox(height: 50,),


                          Container(
                            alignment: Alignment.bottomCenter,
                            child: FlatButton(
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
                                Navigator.pushNamed(context,'/citylist',arguments:{
                                  'listt3':bk['districtData'],
                                });
                              },
                              child: Text(
                                "Citywise analysis",
                                style: TextStyle(fontStyle: FontStyle.italic,color: Colors.orangeAccent[700],fontSize: 17,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),

                          SizedBox(height: 20,),



                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  ]
              ),
            ],
          ),


        ),
      ),


    );
  }
}
