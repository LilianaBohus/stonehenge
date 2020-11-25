import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stonehenge/constants.dart';
import 'package:stonehenge/size-config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: (){},
          color: Colors.black
          ),
          title: Text("Mortars", style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold)),
          actions: <Widget>[ IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
            color: Colors.black,
          )]
      ),
    );
  }
  
}