import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeTextField.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 38),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text("Work Duration",style: TextStyle(
                fontSize: 25
            ),),
            SizedBox(height: 15,),
            homeTextField(controller: controller,text: "(In Minutes)"),
            SizedBox(height: 30,),
            Text("Break Duration",style: TextStyle(
                fontSize: 25
            ),),
            SizedBox(height: 15,),
            homeTextField(controller: controller,text: "(In Minutes)"),
            SizedBox(height: 30,),
            Text("Sessions",style: TextStyle(
                fontSize: 25
            ),),
            SizedBox(height: 15,),
            homeTextField(controller: controller,text: "(number of work sessions)"),

            SizedBox(height: 50,),
            GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.circular(20),
                  ),
                  child: Center(child: Text("Start",style: TextStyle(
                    fontSize: 25,

                  ),)),
                )),
          ],
        ),
      ),
    );
  }
}