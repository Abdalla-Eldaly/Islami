import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/Chapterdetails/versewidget.dart';

class ChapterDetalies extends StatefulWidget {
  static String RoutName = 'cakpe';

  @override
  State<ChapterDetalies> createState() => _ChapterDetaliesState();
}

class _ChapterDetaliesState extends State<ChapterDetalies> {
  @override
  Widget build(BuildContext context) {
    chapterDetailsDM arge =
        ModalRoute.of(context)?.settings.arguments as chapterDetailsDM;
    loadfile(arge.index);
    if (verese.isEmpty) {
      loadfile(arge.index);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(arge.tittle),
            ),
          ),
          body: verese.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
                child: ListView.builder(
                    itemBuilder: (context, index) =>
                        versewidget(verese[index], index),
                    itemCount: verese.length,
                  ),
                )),
    );
  }

  List<String> verese = [];

  void loadfile(int index) async {
    String loadfile =
        await rootBundle.loadString('assets/filesourqyran/${index + 1}.txt');
    verese = loadfile.split('\n');
    setState(() {});
  }
}

class chapterDetailsDM {
  String tittle;
  int index;
  chapterDetailsDM(this.tittle, this.index);
}
