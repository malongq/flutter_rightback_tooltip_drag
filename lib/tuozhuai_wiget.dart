//import 'package:flutter/material.dart';
//
//class TuoZhuaiWiget extends StatefulWidget {
//
//  final Offset offset_ml;
//  final Color color_ml;
//  const TuoZhuaiWiget(this.offset_ml, this.color_ml);
//
//  @override
//  _TuoZhuaiWigetState createState() => _TuoZhuaiWigetState();
//}
//
//class _TuoZhuaiWigetState extends State<TuoZhuaiWiget> {
//
//  Offset offset_ml = Offset(0,0);
//  @override
//  void initState() {
//    super.initState();
//    offset_ml = widget.offset_ml;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Positioned(
//      left: offset_ml.dx,
//      top: offset_ml.dy,
//      child: Draggable(
//        data: widget.color_ml,
//        child: Container(
//          width: 100,
//          height: 100,
//          color: widget.color_ml,
//        ),
//        feedback: Container(
//          width: 130,
//          height: 130,
//          color: widget.color_ml.withOpacity(0.5),
//        ),
//        onDraggableCanceled: (Velocity velocity,Offset offset){
//          setState(() {
//            this.offset_ml = offset;
//          });
//        },
//      )
//    );
//  }
//}


import 'package:flutter/material.dart';

class TuoZhuaiWiget extends StatefulWidget {

  Offset offset;
  Color color;

  TuoZhuaiWiget(this.offset, this.color);

  @override
  _TuoZhuaiWigetState createState() => _TuoZhuaiWigetState();
}

class _TuoZhuaiWigetState extends State<TuoZhuaiWiget> {

  Offset offset = Offset(0, 0);

  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.color,
        child: Container(
          color: widget.color,
          width: 100,
          height: 100,
        ),
        feedback: Container(
          width: 150,
          height: 150,
          color: widget.color.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset){
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}
