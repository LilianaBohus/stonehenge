import 'package:flutter/material.dart';
import 'package:stonehenge/size-config.dart';
import 'package:stonehenge/screen/component/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: (){},
          color: Colors.black
          ),
            actions: <Widget>[ IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
            color: Colors.black,
          )]
      );
  }
  
}