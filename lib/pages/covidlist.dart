import 'package:flutter/material.dart';

class Covidlist extends StatefulWidget {
  @override
  _CovidlistState createState() => _CovidlistState();
}

class _CovidlistState extends State<Covidlist> {

  Map kk={};
  List p;
  List sub;

  @override
  Widget build(BuildContext context) {
    kk=ModalRoute.of(context).settings.arguments;
    p=kk['listt'];
    sub=p.sublist(0,p.length-1);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage( image: AssetImage('assets/hh1.jpg'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.blue[400],
          title: Text('Datewise analysis of Covid-19',style: TextStyle(color: Colors.grey[200]),) ,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(35),
            ),
          ),

        ),

        body: ListView.builder(

            itemCount: sub.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context,'/homelist',arguments: {
                      'listt':p,
                       'index':sub[(sub.length)-index-1],

                    });
                  },
                  child: Card(
                    color: Colors.transparent,
                    elevation: 2,
                    shadowColor: Colors.blue[300],


                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft:Radius.circular(30) ,
                            topLeft:Radius.circular(30) ,
                            topRight: Radius.circular(30)),

                        side: BorderSide(width: 1, color: Colors.blueAccent[100])),
                    child: Container(
                      width: 350,
                      height: 90,
                      child: Center(
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Date',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent[100]),),
                                  SizedBox(height: 5,),
                                  Text('${sub[sub.length-index-1]['date']}',style: TextStyle(fontSize: 25,color: Colors.greenAccent[100]),),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('New cases',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent[100]),),
                                  SizedBox(height: 5,),
                                  Text('${sub[sub.length-index-1]['dailyconfirmed']}',style: TextStyle(fontSize: 25,color: Colors.greenAccent[100]),),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
