import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHistory extends StatefulWidget {
  @override
  _HomeHistoryState createState() => _HomeHistoryState();
}

class _HomeHistoryState extends State<HomeHistory> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(


            child: Column(
              children: <Widget>[

                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.0,),
                        bottomRight: Radius.circular(25.0,),
                      ),
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
                  width: double.infinity,
                  height: 90,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Icon(Icons.arrow_back, size: 20, color: Colors.white,),
                              Text("Home/Away History", style:
                              TextStyle(color: Colors.white, fontSize: 25,
                                  fontWeight: FontWeight.bold),),
                              Icon(Icons.menu, size: 20, color: Colors.white,),

                            ],
                          ),
                        ),

                        SizedBox(height: 20,),





                      ],
                    ),
                  ),
                ),





                Expanded(
                    child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 60,
                        itemBuilder: (BuildContext context, int index){

                          // In order to use divider, I wrapped container in a column, bcz we cannot use more than one child
                          // in a container

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [


                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.blue,
                                  ),

                                  child: Row(
                                    children: [


                                      Container(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            FaIcon(FontAwesomeIcons.walking, color: Colors.white, size: 20,),
                                            FaIcon(FontAwesomeIcons.arrowDown, color: Colors.white, size: 20,),
                                            FaIcon(FontAwesomeIcons.home, color: Colors.white, size: 20,),
                                          ],
                                        ),
                                      ),


                                      Container(
                                        child: Column(
                                          children: [


                                           Container(
                                             margin: EdgeInsets.only(bottom: 4.0),
                                               child: Text('Away 8:47 am', style: TextStyle(color: Colors.white, fontSize: 20),)),


                                            Container(
                                              margin: EdgeInsets.only(bottom: 4.0),
                                              child: Text('14 hrs 9 minutes', style: TextStyle(color: Colors.white, fontSize: 18,
                                                  fontStyle: FontStyle.italic),),
                                            ),

                                            Container(
                                                margin: EdgeInsets.only(left: 9.0),
                                                child:
                                            Text('Home 10:57 pm', style: TextStyle(color: Colors.white, fontSize: 18),))
                                          ],
                                        ),
                                      ),


                                      Container(
                                        margin: EdgeInsets.only(left: 30),
                                        color:Colors.white,
                                        width: 2.0,
                                        height: 70.0,
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(left: 30),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text('1st', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                              Text('January', style: TextStyle(color: Colors.white, fontSize: 18),)
                                            ],
                                          )
                                        ),
                                      )




                                    ],
                                  ),
                                ),



// Divider
                              ],
                            ),
                          );

                        }),
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }
}