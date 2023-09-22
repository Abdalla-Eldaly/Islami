
import 'package:flutter/material.dart';
import 'package:islami/ui/Chapterdetails/ChapterDetails.dart';
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
        hadith.RoutName:(_)=>hadith(),
        homepage.RoutName:(_)=>homepage(),
        ChapterDetalies.RoutName:(_)=>ChapterDetalies(),

      },
      initialRoute: homepage.RoutName,
      title: 'Flutter Demo',

      theme: ThemeData(
        cardTheme: CardTheme(
            elevation: 10,
            color: Color(0xFFE5DFDF) ,
            margin: EdgeInsets.symmetric(vertical: 48,horizontal: 16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
            )

        ),
        fontFamily: 'El_Messiri',
scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 28
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
          secondary: Color(0xFFA28965),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 33,
          )
        ),

        useMaterial3: true,
      ),
    );
  }
}
