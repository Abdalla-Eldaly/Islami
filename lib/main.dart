import 'package:flutter/material.dart';
import 'package:islami/ui/Chapterdetails/ChapterDetails.dart';
import 'package:islami/ui/Chapterdetails/hadithdetails/HadithDetails.dart';
import 'package:islami/ui/MyThemData/MyThemeData.dart';
import 'package:islami/ui/home/hadith/hadith.dart';
import 'package:islami/ui/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HadithDetails.RoutName: (_) => HadithDetails(),
        hadith.RoutName: (_) => hadith(),
        homepage.RoutName: (_) => homepage(),
        ChapterDetalies.RoutName: (_) => ChapterDetalies(),
      },
      initialRoute: homepage.RoutName,
      title: 'إسلامي',
      theme: MyThemData.LightThem,
      darkTheme: MyThemData.DarkThem,
      themeMode: ThemeMode.light,
    );
  }
}
