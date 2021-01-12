import 'package:flutter/material.dart';

class Helper{
  final String title;
  final IconData icon;
  const Helper(this.title,this.icon);

}

const List<Helper> dataHelper = <Helper>[

  Helper('Activities', Icons.local_activity,),
  Helper('Old Data', Icons.sensor_window),

];