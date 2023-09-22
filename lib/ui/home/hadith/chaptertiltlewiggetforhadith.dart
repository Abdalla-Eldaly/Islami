import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../Chapterdetails/chapterdetailsforhadith.dart';

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
