import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hadithtittlewidget.dart';


class hadith extends StatefulWidget {
static String RoutName ='hadith';

  @override
  State<hadith> createState() => _hadithState();
}

class _hadithState extends State<hadith> {
  @override
  Widget build(BuildContext context) {
    if(hadithshow.isEmpty)
      {
        loadfile();
      }
    return
          Column(
            children: [
              Image.asset('assets/images/hadeth_logo.png'),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
                height: 10,
                thickness: 3,

              ),
              Center(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child:  Text('الأحاديث',style: GoogleFonts.getFont('El Messiri',textStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 30,fontWeight: FontWeight.bold)),),


              )),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
                height: 10,
                thickness: 3,

              ),

              Expanded(child:
hadithshow.isEmpty?Center(child: CircularProgressIndicator())
              :ListView.separated(
                  itemBuilder: (context,index)=> hadithitleWidget(hadithshow[index]),
                  separatorBuilder: (context, index) => Container(
                color: Theme.of(context).colorScheme.secondary,
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 50),
              ),
                  itemCount: hadithshow.length))
             ,

              Expanded(child:
hadithshow.isEmpty?Center(child: CircularProgressIndicator())
              :ListView.separated(
                  itemBuilder: (context,index)=> hadithitleWidget(hadithshow[index]),
                  separatorBuilder: (context, index) => Container(
                color: Theme.of(context).colorScheme.secondary,
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 50),
              ),
                  itemCount: hadithshow.length))



            ],
          );

  }
  List<Hadith> hadithshow=[];

void loadfile() async{
  String filecontent =await rootBundle.loadString('assets/hadith/ahadeth.txt');
  List<String> hadithlist = filecontent.trim().split('#');
  for(int i =0;i<hadithlist.length;i++){
    String singlehadith =hadithlist[i];
    List<String> hadithlines = singlehadith.trim().split('\n');
    String tittle =hadithlines[0];
    hadithlines.removeAt(0);
    String content = hadithlines.join('\n');
Hadith haddith =Hadith(tittle, content);
hadithshow.add(haddith);
  }
  setState(() {

  });
}
}

class Hadith{
  String tittle;
  String content;
  Hadith(this.tittle,this.content);
}
