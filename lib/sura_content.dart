import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/sura_model.dart';

class SuraContent extends StatefulWidget {
  static const String routName = "Sura Content";

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      LoadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/main_bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: AppBarTheme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
          elevation: 12,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              endIndent: 40,
              indent: 40,
              color: Theme.of(context).primaryColor,
            ),
            itemBuilder: (context, index) {
              return Center(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    verses[index],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  Future<void> LoadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
