
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:home_keeper/resizer.dart';

import 'login_screen.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {


  AnimationController animationController;
  Animation animation, delayed;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 4), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

    });


    animationController = AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn
    ));


    delayed = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve:Curves.fastOutSlowIn)
    ));




    animationController.forward();


  }

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    final width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child){
      return Scaffold(
        backgroundColor: Colors.blueAccent[700],
        body: Column(
              children: [


                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical*35,
                          left: SizeConfig.blockSizeHorizontal*6),
                      child: Transform(

                        transform: Matrix4.translationValues(animation.value*width, 0.0, 0.0),
                        child: Container(

                          height: 190,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.blueAccent[700]
                          ),
                          child: AvatarGlow(
                            glowColor: Colors.white,
                            endRadius: 290.0,
                            duration: Duration(milliseconds: 2000),
                            repeat: true,
                            showTwoGlows: true,
                            repeatPauseDuration: Duration(milliseconds: 100),
                            child: Material(
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                child: Text('Icon'),
                                radius: 90.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),




                Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal*35, top: SizeConfig.blockSizeVertical*30),
                  child: Transform(
                    transform: Matrix4.translationValues(delayed.value*width, 0.0, 0.0),
                    child: Container(

                      height: 90,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blueAccent[700]
                      ),
                      child: Text('Home Keeper',
                        style: TextStyle(color:Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),

                )





              ],
            )



      );
    });
  }
}



