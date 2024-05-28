import 'package:flutter/cupertino.dart';
import '../../model/DataModel.dart';


class GridItem extends StatelessWidget {
  final DataModel dataModel;
  final IconData icon;

  GridItem({
    Key? key,
    required this.dataModel,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 50),
        SizedBox(height: 5),
        Text(
          dataModel.number,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(dataModel.text),
      ],
    );
  }
}