import 'package:flutter/material.dart';
class DataModel {
  final String number;
  final String text;

  DataModel({required this.text, required this.number});

}

class DataScreen extends StatelessWidget {
   DataScreen({Key? key,}) : super(key: key);

   List<DataModel> Data = [
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Data",style: TextStyle(fontSize: 30),),
        elevation: 0,

      ),
      body: Padding(
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
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icons[index],size: 50),
                    SizedBox(height: 5,),
                    Text("12",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("last session"),
                  ],
                ),

                ),),
          ],
        ),
      ),
    );
  }
}

// class GridItem extends StatelessWidget {
//    GridItem({
//     super.key,
// required this.icon,
//   });
//
// final Icon icon;
//   @override
//   Widget build(BuildContext context) {
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon,size: 50),
//         SizedBox(height: 5,),
//         Text("12",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//         SizedBox(height: 5,),
//         Text("last session"),
//       ],
//     );
//   }
// }
