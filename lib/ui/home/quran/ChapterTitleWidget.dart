import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Chapterdetails/ChapterDetails.dart';

class ChapterTitleWidget extends StatelessWidget {
String title;
int index;
ChapterTitleWidget(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
 onTap: (){
   Navigator.of(context)
.pushNamed(ChapterDetalies.RoutName,
   arguments: chapterDetailsDM(title, index));
   },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(title,
        style: GoogleFonts.getFont('Amiri',  textStyle: TextStyle(
          fontSize: 24.9,
          fontWeight: FontWeight.w700,
color: Theme.of(context).colorScheme.onPrimary
        ),)
        ),
      ),
    );
  }
}
