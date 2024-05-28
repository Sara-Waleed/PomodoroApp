import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/DataModel.dart';
import 'GridItem.dart';

class DataScreenBody extends StatelessWidget {
   DataScreenBody({
    super.key,
  });

  final  List<DataModel> Data = [
    DataModel(number: "5",text:  "Total sessions"),
    DataModel( number: "4",text:  "Longest sessions"),
    DataModel(number:  "100", text: "Number of session"),
    DataModel(number: "50", text: "AVG of sessions"),
  ];
  final   List<IconData> icons = [
    Icons.watch_later_outlined,
    Icons.ac_unit,
    Icons.calendar_month,
    Icons.analytics_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: 4,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5), // Blue shadow with opacity
                    spreadRadius: 2, // Spread radius of the shadow
                    blurRadius: 7, // Blur radius of the shadow
                    offset: Offset(0, 3), // Offset of the shadow (x, y)
                  ),
                ],
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child:GridItem(
                dataModel: Data[index],
                icon: icons[index],
              ),

            ),),
        ],
      ),
    );
  }
}