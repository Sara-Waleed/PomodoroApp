
import 'package:flutter/material.dart';

class historyPage extends StatefulWidget {
  historyPage({Key? key}) : super(key: key);

  @override
  State<historyPage> createState() => _HistoryState();
}

class _HistoryState extends State<historyPage> {
   List items=[
     ListItem(time: "2/2/2024  2:50",counterVal: "135"),
     ListItem(time: "2/2/2024  2:50",counterVal: "135"),
     ListItem(time: "2/2/2024  2:50",counterVal: "135"),
     ListItem(time: "2/2/2024  2:50",counterVal: "135"),
     ListItem(time: "2/2/2024  2:50",counterVal: "135"),

   ];

   void deleteItems() {
     setState(() {
       items.clear();
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        actions: [
          IconButton(onPressed: (){
                    setState(() {
                      deleteItems();
                    });
          }, icon: Icon(Icons.delete))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => items[index],
          separatorBuilder: (context, index) => SizedBox(height: 10,),
          itemCount: items.length)
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.time,
    required this.counterVal
  });
final String time;
final String counterVal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(time,style: TextStyle(fontSize: 20),),
              Text(counterVal,style: TextStyle(fontSize: 20),),

            ],
          ),
        ),

      ),
    );
  }
}
