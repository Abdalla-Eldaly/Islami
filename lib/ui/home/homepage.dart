
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/home/Setting/Setting.dart';
import 'package:islami/ui/home/quran/quran.dart';
import 'package:islami/ui/home/radio/radio.dart';
import 'package:islami/ui/home/tasbeh/tasbeh.dart';


import 'hadith/hadith.dart';

class homepage extends StatefulWidget {
static String RoutName ='homepage';

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
int selecttapindex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill
        )
      ) ,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Islami',),
          centerTitle: true,

        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
setState(() {
  selecttapindex =index;

});
          },

          currentIndex: selecttapindex,

          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,

                icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),label: 'tasbeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),label: 'hadith'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),label: 'radio'),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.settings),label: 'Settings'
            )
          ],
        ),
        body: taps[selecttapindex],
      ),

    );
  }
List<Widget> taps=[
  quran(),
  sebha(),
hadith(),
  radio(),
  Setting()

];

}
