
import 'package:flutter/material.dart';
import 'package:home_keeper/home_page.dart';

import 'nav_helper.dart';

class Navigation_Screen extends StatefulWidget {
  @override
  _Navigation_ScreenState createState() => _Navigation_ScreenState();
}

class _Navigation_ScreenState extends State<Navigation_Screen> {



  int _currentIndex = 0;

  final allScreensDestination = [

    HomePage(),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allScreensDestination,
        ),
      ),

      // Code for notch
      // BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   child: new Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       IconButton(
      //         icon: Icon(Icons.local_activity),
      //         color: Colors.white,
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.sensor_window),
      //         color: Colors.white,
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      //   color: Colors.blueAccent,
      // ),


      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.white),
          selectedIconTheme: IconThemeData(
              color: Colors.white
          ),
          backgroundColor: Colors.blueAccent,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: dataHelper.map((Helper helper){
            return BottomNavigationBarItem(
                icon : Icon(helper.icon,),
                backgroundColor: Colors.white,
                title: Text(helper.title)
            );

          }).toList()


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white, size: 29,),
        backgroundColor: Colors.blueAccent[700],
        tooltip: 'Add activities',
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}