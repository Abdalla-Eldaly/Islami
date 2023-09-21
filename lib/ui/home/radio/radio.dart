import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80,),

          Expanded(
  child:   Column(

    children: [
      Image.asset('assets/images/radio_image.png'),



    ],

  ),
),
          const Expanded(
            child: Column(
              children: [
                Text('إذاعه القرأن الكريم',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_circle_left_outlined,size: 40,color: Color(0xFFB7935F)),
                    Icon(Icons.play_circle_fill,size: 65,color: Color(0xFFB7935F)),
                    Icon(Icons.arrow_circle_right_outlined,size: 40,color: Color(0xFFB7935F),),
                  ],
                )
              ],
            ),
          ),


        ],
      ),

    );

  }
}
