import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/view/screens/Home.dart';
import 'package:pomodoro/view/screens/splash.dart';
import '../../control/constants.dart';
import 'DataScreen.dart';
import 'History.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;
  bool isDark = true;

  late final List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      dataScreen(),
      Home(isDark: isDark, Toggle: toggleTheme),
      historyPage(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
      // Update the widget options to reflect the theme change
      _widgetOptions[1] = Home(isDark: isDark, Toggle: toggleTheme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Home": (context) => Home(
          isDark: isDark,
          Toggle: toggleTheme,
        ),
        "Splash": (context) => InitialScreen(),
        "Data": (context) => dataScreen(),
        "History": (context) => historyPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.date_range_outlined),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

