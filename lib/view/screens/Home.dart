import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Main_Widgets/HomeBody.dart';
import '../Main_Widgets/ThemeChangingIcon.dart';

class Home extends StatelessWidget {
   Home({Key? key, required this.isDark, required this.Toggle}) : super(key: key);
   final VoidCallback Toggle;
   final bool isDark;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Session'),
        actions: [
          ThemeChangingIcon(isDark: isDark, Toggle: Toggle),
        ],
      ),

      body: HomeBody(),
    );
  }
}




