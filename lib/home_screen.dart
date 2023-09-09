import 'package:flutter/material.dart';
import 'package:islami2/tabs/ahadeth.dart';
import 'package:islami2/tabs/quran.dart';
import 'package:islami2/tabs/radio.dart';
import 'package:islami2/tabs/sebha.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [QuranTab(), SebhaTab(), RadioTab(), AhadethTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        child: Image.asset(
          "assets/images/main_bg.png",
          fit: BoxFit.fill,
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami", style: Theme.of(context).textTheme.bodyLarge),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                  ),
                  label: "Quran",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/Sebha.png"),
                  ),
                  label: "Sebha",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/radio.png"),
                  ),
                  label: "Radio",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ahadeth.png"),
                  ),
                  label: "Ahadeth",
                  backgroundColor: Theme.of(context).primaryColor),
            ]),
        body: tabs[index],
      ),
    ]);
  }
}
