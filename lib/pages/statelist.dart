import 'package:flutter/material.dart';

class Statelist extends StatefulWidget {
  @override
  _StatelistState createState() => _StatelistState();
}

class _StatelistState extends State<Statelist> {
  Map kk={};
  List p;

  @override
  Widget build(BuildContext context) {
    kk=ModalRoute.of(context).settings.arguments;
    p=kk['listt2'];
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage( image: AssetImage('assets/India.jpg'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          elevation: 2,
          shadowColor: Colors.blue,
          backgroundColor: Colors.transparent,
          title: Text('Statewise analysis',style: TextStyle(color: Colors.grey[200]),) ,
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
                padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 4.0),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context,'/statehome',arguments: {
                      'listt2':p,
                      'index':p[index],
                      'image':'${p[index]['state']}.jpg'

                    });
                  },
                  child: Card(
                    color: Colors.transparent,
                    elevation: 2,
                    shadowColor: Colors.blue[300],


                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80),
                            bottomLeft:Radius.circular(80) ,
                            topLeft:Radius.circular(80) ,
                            topRight: Radius.circular(80)),

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
                                  Text('${p[index]['state']}',style: TextStyle(fontSize: 20,color: Colors.orangeAccent[400],fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5,),
                                  Divider(height: 2,thickness: 1,color: Colors.amberAccent,),
                                  Text('Total cases',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('${p[index]['confirmed']}',style: TextStyle(fontSize: 20,color: Colors.greenAccent[400],fontWeight: FontWeight.bold),),
                                ],
                              ),

                           ]
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
