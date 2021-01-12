import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text("Weekly Stats", style:
                              TextStyle(color: Colors.white, fontSize: 30,
                                  fontWeight: FontWeight.bold),),

                              Column(
                                children: [
                                  Text('27°C', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  Text('HALLWAY', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                ],
                              )

                            ],
                          ),
                        ),

                        SizedBox(height: 20,),


                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              side: BorderSide(width: 5, color: Colors.blueAccent[700])),
                          child:  ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.black,
                            ),
                            title: Text('Hello', style: TextStyle(color: Colors.black,
                                fontSize: 20, fontWeight: FontWeight.bold),),
                            subtitle: Text('Hello'),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top:6.0),
                              child: Column(
                                children: [
                                  Icon(Icons.home, color: Colors.black,),
                                  Text('Home')
                                ],
                              ),
                            )


                          ),
                        )




                      ],
                    ),
                  ),
                ),


                SizedBox(height: 20,),
                Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [


                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [


                              Container(
                                margin: EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [
                                    Icon(Icons.single_bed, size: 30, color: Colors.pink,),

                                    Text('Get out of bed', style: TextStyle(color: Colors.black,
                                        fontSize: 18, fontWeight: FontWeight.bold),),
                                    Text('Occured at 5:00am', style: TextStyle(color: Colors.black,
                                      fontSize: 16, ),),
                                    Icon(Icons.check, size: 30, color: Colors.green,),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),



                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [



                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: [
                                      Icon(Icons.single_bed, size: 30, color: Colors.pink,),

                                      Text('Breakfast', style: TextStyle(color: Colors.black,
                                          fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Occured at 5:00am', style: TextStyle(color: Colors.black,
                                        fontSize: 16, ),),
                                      Icon(Icons.check, size: 30, color: Colors.green,),
                                    ],
                                  ),
                                ),

                              ],
                            )
                        ),




                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [



                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: [
                                      Icon(Icons.single_bed, size: 30, color: Colors.pink,),

                                      Text('Morning movement', style: TextStyle(color: Colors.black,
                                          fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Occured at 5:00am', style: TextStyle(color: Colors.black,
                                        fontSize: 16, ),),
                                      Icon(Icons.check, size: 30, color: Colors.green,),
                                    ],
                                  ),
                                ),

                              ],
                            )
                        ),


                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [


                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: [
                                      Icon(Icons.single_bed, size: 30, color: Colors.pink,),

                                      Text('Lunch', style: TextStyle(color: Colors.black,
                                          fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Occured at 5:00am', style: TextStyle(color: Colors.black,
                                        fontSize: 16, ),),
                                      Icon(Icons.check, size: 30, color: Colors.green,),
                                    ],
                                  ),
                                ),

                              ],
                            )
                        ),



                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [


                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: [
                                      Icon(Icons.single_bed, size: 30, color: Colors.pink,),

                                      Text('Afternoon movement', style: TextStyle(color: Colors.black,
                                          fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Occured at 5:00am', style: TextStyle(color: Colors.black,
                                        fontSize: 16, ),),
                                      Icon(Icons.check, size: 30, color: Colors.green,),
                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),


                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [



                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: [
                                      Icon(Icons.single_bed, size: 30, color: Colors.pink,),

                                      Text('Dinner', style: TextStyle(color: Colors.black,
                                          fontSize: 20, fontWeight: FontWeight.bold),),
                                      Text('Occured at 5:00am', style: TextStyle(color: Colors.black,
                                        fontSize: 16, ),),
                                      Icon(Icons.check, size: 30, color: Colors.green,),
                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),

                      ]
                    )
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }
}