import 'package:flutter/material.dart';
import 'package:islami2/home_screen.dart';
import 'package:islami2/my_theme.dart';
import 'package:islami2/sura_content.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraContent.routName: (context) => SuraContent(),
      },
    );
  }
}
