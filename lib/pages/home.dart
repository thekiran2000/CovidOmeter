import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
//

class _HomeState extends State<Home> {

  Map kk={};
  Map bk={};
  List m;
  List p;



  @override
  Widget build(BuildContext context) {
    kk=ModalRoute.of(context).settings.arguments;
    p=kk['listt2'];
    m=kk['listt'];
    print(p);
    bk=m[m.length-1];
    return SafeArea(
      child: 
          Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
                colors: <Color>[

                  Colors.cyan[300],

                  Colors.indigo[800],
//                  Colors.cyan[400],

                ], // red to yellow
//                tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
//              image: DecorationImage( image: AssetImage('assets/cor.jpg'),fit: BoxFit.cover)
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 1,

              backgroundColor: Colors.blue[700],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Covid',style: GoogleFonts.courgette(fontSize: 23),),
                  Image.asset('assets/mas23.jpg',height: 38,width: 35,),
                  Text('meter',style: GoogleFonts.courgette(fontSize: 23),),
                ],
              ) ,
              toolbarHeight: 80,
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),

            ),
            body: Stack(
              children:[
                ListView(
                    physics: BouncingScrollPhysics(),
                children:[
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


                          width: 60,
                          height: 60,

                        ),
                      SizedBox(height: 10,),

                      Text('India',style: GoogleFonts.courgette(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            color: Colors.orange,

                            elevation: 2,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft:Radius.circular(20) ,
                                    topLeft:Radius.circular(20) ,
                                    topRight: Radius.circular(20)),

                                ),
                            child: Container(
                              width: 165,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20),),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
                                  colors: <Color>[

                                    Colors.amber[300],

                                    Colors.orange[900],
                                  ], // red to yellow

                                ),


                              ),

                              child: Center(
                                  child:
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Daily Confirmed',style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('${bk['dailyconfirmed']}',style: GoogleFonts.lato(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                                    ],
                                  )),
                            ),
                          ),
                          Card(
                            color: Colors.green,
                            elevation: 2,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft:Radius.circular(20) ,
                                    topLeft:Radius.circular(20) ,
                                    topRight: Radius.circular(20)),

                                ),
                            child: Container(

                              width: 165,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20),),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
                                  colors: <Color>[

                                    Colors.lightGreenAccent,

                                    Colors.green[700],
                                  ], // red to yellow

                                ),


                              ),
                              child: Center(
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Daily Recovered',style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                        SizedBox(height: 5,),
                                        Text('${bk['dailyrecovered']}',style: GoogleFonts.lato(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Card(
                        color: Colors.red,
                        elevation: 2,


                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft:Radius.circular(30) ,
                                topLeft:Radius.circular(30) ,
                                topRight: Radius.circular(30)),

                            ),
                        child: Container(
                          width: 275,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20),),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
                              colors: <Color>[

                                Colors.redAccent[100],

                                Colors.redAccent[700],
                              ], // red to yellow

                            ),


                          ),
                          child: Center(
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Daily Deaths',style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('${bk['dailydeceased']}',style: GoogleFonts.lato(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('${bk['date']}',style: GoogleFonts.lato(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.grey[300]),),
                      SizedBox(height: 150,),
                      Card(
                        color: Colors.transparent,
//                        shadowColor: Colors.orange[300],
                        elevation: 1,


                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft:Radius.circular(30) ,
                                topLeft:Radius.circular(30) ,
                                topRight: Radius.circular(30)),

                            side: BorderSide(width: 1, color: Colors.indigoAccent[100])),
                        child: ExpansionTile(leading:Image.asset('assets/mas.jpg'),title: Center(child: Text('Total Till Date',style: GoogleFonts.zillaSlab(fontSize:23,fontWeight: FontWeight.bold,color: Colors.amber),)),
                          children: [
                            SizedBox(height: 20,),

                            Card(
                              color: Colors.transparent,
                              elevation: 1,


                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft:Radius.circular(30) ,
                                      topLeft:Radius.circular(30) ,
                                      topRight: Radius.circular(30)),

                                  side: BorderSide(width: 1, color: Colors.indigoAccent)),
                              child: Container(
                                width: 350,
                                height: 90,
                                child: Center(
                                    child:
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Total Cases Confirmed',style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.yellowAccent),),
                                        SizedBox(height: 5,),
                                        Text('${bk['totalconfirmed']}',style: GoogleFonts.lato(fontSize: 25,color: Colors.yellowAccent[100]),),
                                      ],
                                    )),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Card(
                              color: Colors.transparent,
                              elevation: 2,


                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft:Radius.circular(30) ,
                                      topLeft:Radius.circular(30) ,
                                      topRight: Radius.circular(30)),

                                  side: BorderSide(width: 1, color: Colors.indigoAccent)),
                              child: Container(
                                width: 350,
                                height: 90,child: Center(
                                  child:
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Total Recoveries',style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent),),
                                      SizedBox(height: 5,),
                                      Text('${bk['totalrecovered']}',style: GoogleFonts.lato(fontSize: 25,color: Colors.greenAccent[100]),),
                                    ],
                                  )),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Card(
                              color: Colors.transparent,
                              elevation: 2,


                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft:Radius.circular(30) ,
                                      topLeft:Radius.circular(30) ,
                                      topRight: Radius.circular(30)),

                                  side: BorderSide(width: 1, color: Colors.indigoAccent)),
                              child: Container(
                                width: 350,
                                height: 90,
                                child: Center(
                                    child:
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Total Deaths',style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                                        SizedBox(height: 5,),
                                        Text('${bk['totaldeceased']}',style: GoogleFonts.lato(fontSize: 25,color: Colors.redAccent[100]),),
                                      ],
                                    )),
                              ),
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        color: Colors.transparent,
//                        shadowColor: Colors.orange[300],
                        elevation: 2,


                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft:Radius.circular(30) ,
                                topLeft:Radius.circular(30) ,
                                topRight: Radius.circular(30)),

                            side: BorderSide(width: 1, color: Colors.indigoAccent[100])),
                        child: ExpansionTile(leading:Image.asset('assets/mas.jpg'),title: Center(child: Text('Covid-19 Analysis',style: GoogleFonts.zillaSlab(fontSize:23,fontWeight: FontWeight.bold,color: Colors.amber),)),
                          children: [
                            SizedBox(height: 20,),


                            FlatButton(
                              color: Colors.transparent,
                              splashColor:Colors.orange[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft:Radius.circular(30) ,
                                      topLeft:Radius.circular(30) ,
                                      topRight: Radius.circular(30)),

                                  side: BorderSide(width: 1, color: Colors.indigoAccent)),

                              onPressed: () {
                                Navigator.pushNamed(context,'/covidlist',arguments:{
                                  'listt':m,
                                });
                              },
                              child: Text(
                                "Previous days analysis",
                                style: TextStyle(fontStyle: FontStyle.italic,color: Colors.purpleAccent[100],fontSize: 17,fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 20,),
                            FlatButton(
                              color: Colors.transparent,
                              splashColor:Colors.orange[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft:Radius.circular(30) ,
                                      topLeft:Radius.circular(30) ,
                                      topRight: Radius.circular(30)),

                                  side: BorderSide(width: 1, color: Colors.indigoAccent)),

                              onPressed: () {
                                Navigator.pushNamed(context,'/covgraph',arguments:{
                                  'listt':m,
                                });
                              },
                              child: Text(
                                "Graphical analysis",
                                style: TextStyle(fontStyle: FontStyle.italic,color: Colors.purpleAccent[100],fontSize: 17,fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 20,),

                            FlatButton(
                              color: Colors.transparent,
                              splashColor:Colors.redAccent[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft:Radius.circular(30) ,
                                      topLeft:Radius.circular(30) ,
                                      topRight: Radius.circular(30)),

                                  side: BorderSide(width: 1, color: Colors.indigoAccent)),

                              onPressed: () {
                                Navigator.pushNamed(context,'/statelist',arguments:{
                                  'listt2':p,
                                });
                              },
                              child: Text(
                                "statewise analysis",
                                style: TextStyle(fontStyle: FontStyle.italic,color: Colors.purpleAccent[100],fontSize: 17,fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 20,),
                            FlatButton(
                              color: Colors.transparent,
                              splashColor:Colors.redAccent[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft:Radius.circular(30) ,
                                      topLeft:Radius.circular(30) ,
                                      topRight: Radius.circular(30)),

                                  side: BorderSide(width: 1, color: Colors.indigoAccent)),

                              onPressed: () {
                                Navigator.pushNamed(context,'/piechart',arguments:{
                                  'listt2':m,
                                });
                              },
                              child: Text(
                                "Piechart analysis",
                                style: TextStyle(fontStyle: FontStyle.italic,color: Colors.purpleAccent[100],fontSize: 17,fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 20,),

                          ],
                        ),
                      ),
                      SizedBox(height: 20,),






                    ],
                  ),
                ),
                ]
              ),
              ],
            ),


        ),
          ),
            
      
    );
  }
}
