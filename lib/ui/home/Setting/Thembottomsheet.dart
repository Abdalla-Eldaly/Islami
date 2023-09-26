import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Thembottomsheet extends StatefulWidget {
  @override
  State<Thembottomsheet> createState() => _ThembottomsheetState();
}

class _ThembottomsheetState extends State<Thembottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SelectedItems('Light'),
          UnSelectedItems('Dark')
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
          style: TextStyle( color: Theme.of(context).colorScheme.secondary
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
