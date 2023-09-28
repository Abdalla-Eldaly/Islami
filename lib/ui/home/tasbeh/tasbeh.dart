import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  List<String> tesbih = [ 'سبحان االله', 'الحمد لله','الله أكبر'];

  int numSebha = 0;

  int count = 1 ;

  String nameSebha = 'سبحان االله';

  double rotationAngle = 0.0;

  void _rotateImage() {
    setState(() {
      rotationAngle -= 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  left: 50,
                ),
                child: Image.asset(
                  'assets/images/head_sebha_logo.png',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 80,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    _rotateImage();
                    addTesbih(count);
                  },
                  child: Transform.rotate(
                    angle: rotationAngle * (3.14159265359 / 180),
                    child: Image.asset('assets/images/body_sebha_logo.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text('عدد التسبيحات',style: GoogleFonts.getFont('El Messiri',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onPrimary)),),

        SizedBox(
          height: 20,
        ),
        Container(
          height: 80,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25)),
          child:
          Text('$numSebha',style: GoogleFonts.getFont('Lato',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold
          ,color: Theme.of(context).colorScheme.onSecondary)),),

        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25)),
          child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:Text('$nameSebha',style: GoogleFonts.getFont('Lalezar',textStyle: TextStyle(
                color:Colors.black,fontSize: 25,fontWeight: FontWeight.w400)),),
          ),
        ),
      ],
    );
  }

  void addTesbih(index) {

    if (numSebha == 33) {
      nameSebha = tesbih[index];
      numSebha = 0;
      count++ ;
    }
    if(nameSebha == 'الله أكبر') {
      count = 0 ;
    }
    setState(() {
      numSebha++;
    });

  }
}