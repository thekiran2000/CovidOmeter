import 'package:flutter/material.dart';

class Citylist extends StatefulWidget {
  @override
  _CitylistState createState() => _CitylistState();
}

class _CitylistState extends State<Citylist> {
  Map kk={};
  List p;

  @override
  Widget build(BuildContext context) {
    kk=ModalRoute.of(context).settings.arguments;
    p=kk['listt3'];
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage( image: AssetImage('assets/City1.jpg'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.greenAccent[400],
          title: Text('Districtwise analysis',style: TextStyle(color: Colors.grey[100],fontSize: 21),) ,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(35),
            ),
          ),

        ),

        body: ListView.builder(

            itemCount: p.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                child: InkWell(
                  onTap: (){
//                    Navigator.pushNamed(context,'/statehome',arguments: {
//                      'listt2':p,
//                      'index':p[index],

//                    }
//                    );
                  },
                  child: Card(
                    color: Colors.transparent,
                    elevation: 2,
                    shadowColor: Colors.greenAccent[400],


                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(120),
                            bottomLeft:Radius.circular(120) ,
                            topLeft:Radius.circular(120) ,
                            topRight: Radius.circular(120)),

                        side: BorderSide(width: 1, color: Colors.blueAccent[100])),
                    child: Container(
                      width: 350,
                      height: 120,
                      child: Center(
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  SizedBox(height: 5,),
                                  Text('${p[index]['name']}',style: TextStyle(fontSize: 25,color: Colors.pinkAccent[100],fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5,),
                                  Column(
                                    children: [
                                      Text('Total Confirmed Cases',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent[100]),),
                                      SizedBox(height: 5,),
                                      Text('${p[index]['confirmed']}',style: TextStyle(fontSize: 19,color: Colors.greenAccent[100],fontWeight: FontWeight.bold),),
                                    ],
                                  ),

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
