// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class NoteMini extends StatefulWidget {
  const NoteMini({Key? key, required this.title, required this.content})
      : super(key: key);
  final String title;
  final String content;
  @override
  State<NoteMini> createState() => _NoteMiniState();
}

class _NoteMiniState extends State<NoteMini> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 150,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Color.fromARGB(54, 158, 158, 158),
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            color: Colors.yellow,
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
            child: Text(widget.title,
          ),
        ),
        ),
      Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.topLeft,
            height: double.infinity,
            constraints: BoxConstraints.expand(),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            child: Text(widget.content,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                ),
          ),
        ),
      ]
    ),
    );
  }
}
