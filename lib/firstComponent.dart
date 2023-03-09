// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GoogleSearcComponent extends StatelessWidget {
  String link = "";
  String title = "";
  String description = "";

  GoogleSearcComponent({super.key,
   required this.link,
   required this.title, 
   required this.description,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
           children: [
            SizedBox(
              width: 50,
              child: Text(link, overflow: TextOverflow.ellipsis,
              ),
            )
           ],
          ),
          Row(
            children: [
              Flexible(
                child: Text(title, 
                style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.blueAccent),),
              )
            ],
          ),
          Row(
            children: [Flexible(child: Text(description))],
          ),
        ]) ,
    );
  }
}