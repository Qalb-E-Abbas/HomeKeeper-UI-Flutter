import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:home_keeper/registration_screen.dart';

class EditUser extends StatefulWidget {
  @override
  _EditUserState createState() => _EditUserState();
}


class _EditUserState extends State<EditUser> {

  bool isSwitched = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
              children: [


                Container(
                  height: 330.0,
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
                ),


                Container(
                    margin: EdgeInsets.only(left: 140,top: 25),
                    height: 180,
                    width: 110,

                    child:  Container(

                      height: 190,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: AvatarGlow(
                        glowColor: Colors.white,
                        endRadius: 300.0,
                        duration: Duration(milliseconds: 2000),
                        repeat: true,
                        showTwoGlows: true,
                        repeatPauseDuration: Duration(milliseconds: 100),
                        child: Material(
                          shape: CircleBorder(),
                          child: ClipOval(
                            child: Image.asset('assets/instar1.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                ),
                SingleChildScrollView(
                  child: Container(
                      height: 800.0,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: 180),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                          )
                      ),
                      child: Column(

                        children: [
                          Container(
                              margin: EdgeInsets.only( top: 25.0),
                              child: Center(
                                child: Text('Owners Settings', style: TextStyle(fontSize: 30, color: Colors.black,
                                    fontWeight: FontWeight.bold),),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              margin: EdgeInsets.only(left:40, right: 40, top: 30),
                              child: Column(
                                children: [
                                  Container(
                                    child: Form(
                                        child:

                                        Column(
                                          children: [



                                            Card(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.blueAccent, width: 1),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Qalb E Abbas',
                                                      hintStyle: TextStyle(
                                                          color: Colors.black,
                                                        fontSize: 18
                                                      ),
                                                    prefixIcon: Icon(Icons.account_box, color: Colors.blueAccent[700],)
                                                  ),
                                                ),

                                            ),

                                            SizedBox(height: 20),

                                            Card(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.blueAccent, width: 1),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                 Icon(Icons.account_box, color: Colors.blueAccent[700],),

                                                  Padding(
                                                    padding: const EdgeInsets.only(right:20.0),
                                                    child: Text('Away/Vacation Mode', style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18
                                                    ),),
                                                  ),

                                                  Switch(
                                                    value: isSwitched,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        isSwitched = value;
                                                        print(isSwitched);
                                                      });
                                                    },
                                                    activeTrackColor: Colors.blueAccent,
                                                    activeColor: Colors.blueAccent[700],
                                                  ),

                                                ],
                                              )
                                            ),

                                            SizedBox(height: 20,),

                                            Card(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(color: Colors.blueAccent, width: 1),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),


                                                  child: Row(
                                                    children: [

                                              Flexible(
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Hub Id',
                                                      hintStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18
                                                      ),
                                                    prefixIcon: Icon(Icons.account_box, color: Colors.blueAccent[700],)
                                                  ),
                                                ),
                                              ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(right:22.0),
                                                        child: Text('abc123',
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 18
                                                          ),),
                                                      ),

                                                    ],
                                                  ),
                                                )




                                          ],
                                        )),
                                  ),

                                  SizedBox(height: 40),

                                  Container(
                                    height: 50,
                                    width: 175,
                                    padding: EdgeInsets.all(10.0),
                                    child:
                                    Row(
                                      children: [
                                      Container(
                                          child: Icon(Icons.check, color: Colors.white,),
                                        padding: EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blueAccent[700],
                                        border: Border.all(color: Colors.white)
                                      ),
                                      ),
                                      SizedBox(width: 7.0,),

                                      Text('Update Settings', style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.bold, fontSize: 16),),
                                    ],),

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
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
                                  ),

                                  SizedBox(height: 20),

                                  Container(
                                    height: 50,
                                    width: 124,
                                    padding: EdgeInsets.all(8.0),
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(Icons.account_circle_outlined, color: Colors.red,),
                                          padding: EdgeInsets.all(2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white,
                                              border: Border.all(color: Colors.red)
                                          ),
                                        ),
                                        SizedBox(width: 7.0,),

                                        Text('Sign Out', style: TextStyle(color: Colors.red,
                                            fontWeight: FontWeight.bold, fontSize: 16),),
                                      ],),

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Colors.white,
                                        border: Border.all(color: Colors.red)
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),

              ],
            ),
    );

  }
}


