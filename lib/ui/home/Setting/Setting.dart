import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Languagebottomsheet.dart';
import 'Thembottomsheet.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Them',
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontSize: 22),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Showthembottomdialog();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Light',
                    style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Language',
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontSize: 22),
          ),
          InkWell(
            onTap: () {
              Showlanguagedialogebottom();
            },
            child: Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'English',
                      style: TextStyle( color: Theme.of(context).colorScheme.onPrimary,fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    )
                  ],
                )),
          ),
        ],
      ),
    ));
  }

  void Showthembottomdialog() {
    showModalBottomSheet(
        context: context, builder: (context) => Thembottomsheet());
  }

  void Showlanguagedialogebottom() {
    showModalBottomSheet(
        context: context, builder: (context) => Languagebottomsheet());
  }
}
