import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/Chapterdetails/chapterdetailsforhadith.dart';
import 'package:islami/ui/home/hadith/hadith.dart';

class hadithwidget extends StatelessWidget {
String tittle;
int index;

hadithwidget(this.tittle,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(chapterdmforhadith.RoutName
        ,arguments: chdmforhadith(tittle,index));
      },
      child: Container(

        alignment: Alignment.center,
        child: Text(tittle,style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),

      ),
    );
  }
}
