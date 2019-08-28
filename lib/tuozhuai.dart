//import 'package:flutter/material.dart';
//import 'tuozhuai_wiget.dart';
//
//class HomeTuo extends StatefulWidget {
//  @override
//  _HomeTuoState createState() => _HomeTuoState();
//}
//
//class _HomeTuoState extends State<HomeTuo> {
//
//  Color _color = Colors.grey;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Stack(
//        children: <Widget>[
//          TuoZhuaiWiget(Offset(108, 80), Colors.tealAccent),
//          TuoZhuaiWiget(Offset(208, 80), Colors.redAccent),
//          Center(
//            child: DragTarget(
//                onAccept: (Color color) {_color = color;},
//                builder: (context, candidateData, rejectedData) {
//                  return Container(
//                    width: 200.0,
//                    height: 200.0,
//                    color: _color,
//                  );
//                }
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}



import 'package:flutter/material.dart';
import 'tuozhuai_wiget.dart';

class Drag extends StatefulWidget {
  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {

  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TuoZhuaiWiget(Offset(100, 80),Colors.redAccent),
          TuoZhuaiWiget(Offset(208, 80),Colors.greenAccent),
          Center(
            child: DragTarget(
              onAccept: (Color c){
                color = c;
              },
                builder: (context,candidateData,rejectedData){
                  return Container(
                     width: 200,
                     height: 200,
                      color: color,
                  );
            }),
          )
        ],
      ),
    );
  }
}

