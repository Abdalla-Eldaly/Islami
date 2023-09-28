import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../Chapterdetails/hadithdetails/HadithDetails.dart';

class hadithitleWidget extends StatelessWidget {
  Hadith hadeth;

  hadithitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context)
            .pushNamed(HadithDetails.RoutName,
            arguments: hadeth
        );
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(hadeth.tittle,
              style: GoogleFonts.elMessiri(textStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 25
              ))
          )
      ),
    );
  }
}
class Hadith{
  String tittle;
  String content;
  Hadith(this.tittle,this.content);
}