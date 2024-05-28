import 'package:flutter/material.dart';
import '../Main_Widgets/DataScreenBody.dart';



class dataScreen extends StatelessWidget {
   dataScreen({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Data",style: TextStyle(fontSize: 30),),
        elevation: 0,

      ),
      body: DataScreenBody(),
    );
  }
}




