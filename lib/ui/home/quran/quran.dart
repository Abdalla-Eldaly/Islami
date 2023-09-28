import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ChapterTitleWidget.dart';

class quran extends StatefulWidget {
  @override
  State<quran> createState() => _quranState();
}

class _quranState extends State<quran> {

  List<String> surahName=["الفاتحه",
    "البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش"," الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  List<String> numbers = [
    '7', '286', '200', '176', '120', '165', '206', '75', '129', '109', '123', '111', '43', '52', '99', '128', '111', '110', '98', '135',
    '112', '78', '118', '64', '77', '227', '93', '88', '69', '60', '34', '30', '73', '54', '45', '83', '182', '88', '75', '85', '54',
    '53', '89', '59', '37', '35', '38', '29', '18', '45', '60', '49', '62', '55', '78', '96', '29', '22', '24', '13', '14', '11', '11',
    '18', '12', '12', '30', '52', '52', '44', '28', '28', '20', '56', '40', '31', '50', '40', '46', '42', '29', '19', '36', '25', '22',
    '17', '19', '26', '30', '20', '15', '21', '11', '8', '8', '19', '5', '8', '8', '11', '11', '8', '3', '9', '5', '4', '7', '3', '6',
    '3', '5', '4', '5', '6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Image.asset('assets/images/qur2an_screen_logo.png')),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
            height: 10,
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'عدد الآيات',
                style: GoogleFonts.getFont('El Messiri',
                    textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Text(
                'اسم السورة',
                style: GoogleFonts.getFont('El Messiri',
                    textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
            height: 10,
            thickness: 3,
          ),
          Expanded(
            flex: 5,
            child: ListView(
              children: [
                Center(
                  child: Table(
                    border: TableBorder(
                      verticalInside: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary, // Color of the vertical lines
                        width: 2.0, // Width of the vertical lines
                      ),
                    ),
                    children: generateTableRows(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<TableRow> generateTableRows() {
    List<TableRow> rows = [];

    for (int i = 0; i < numbers.length; i++) {
      rows.add(
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  numbers[i],
                  style: GoogleFonts.getFont('Roboto',
                      textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                )),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChapterTitleWidget(surahName[i], i),
              ),
            ),
          ],
        ),
      );
    }

    return rows;
  }
}
