import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       SelectedItems('English'),
          UnSelectedItems('العربيه')
        ],
      ),
    );
  }

  Widget SelectedItems(String text){
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary
              ,fontSize: 22),
        ),
        Icon(
          Icons.check,
          size: 25,
          color: Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }

  Widget UnSelectedItems(String text){
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 22),
        ),

      ],
    );
  }
}
