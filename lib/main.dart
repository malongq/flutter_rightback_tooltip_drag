//import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
//import 'tuozhuai.dart';
//
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: '右滑返回和轻量级提示demo',
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData.light(),
//      home: Home(),
//    );
//  }
//
//}
//
//class Home extends StatelessWidget{
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar:AppBar(
//        title: Text('右滑返回和轻量级提示demo'),
//      ),
//      body: Column(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            Container(
//              margin: EdgeInsets.all(10.0),
//              width: 100.0,
//              height: 100.0,
//              color: Colors.blueAccent,
//              child: IconButton(
//                  icon: Icon(Icons.forward,size: 50.0,color: Colors.white,),
//                  tooltip: '点击它是进入美女页面，作用是长按显示轻量级提示',
//                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>NewHome()));}),
//            ),
//            Text('1：点击它是进入美女页面，作用是长按显示轻量级提示',style: Theme.of(context).textTheme.title,),
//            Container(
//              margin: EdgeInsets.all(10.0),
//              width: 100.0,
//              height: 100.0,
//              color: Colors.green,
//              child: IconButton(
//                  icon: Icon(Icons.input,size: 50.0,color: Colors.white,),
//                  tooltip: '点击它是重载该页面，作用右滑返回效果',
//                  onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>Home()));}
//              ),
//            ),
//            Text('2：点击它是进入美女页面，作用是长按显示轻量级提示',style: Theme.of(context).textTheme.title,),
//            Container(
//              margin: EdgeInsets.all(10.0),
//              width: 100.0,
//              height: 100.0,
//              color: Colors.redAccent,
//              child: IconButton(
//                  icon: Icon(Icons.gesture,size: 50.0,color: Colors.white,),
//                  onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>HomeTuo()));}
//              ),
//            ),
//            Text('3：点击它是进入拖拽页面',style: Theme.of(context).textTheme.title,),
//          ],
//      ),
//    );
//  }
//}
//
//
//class NewHome extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//
//    var width = MediaQuery.of(context).size.width;
//
//    return Container(
//      color: Colors.green,
//      child: Center(
//        child: Tooltip(
//          message: '点我不管用的呦',
////          child:Icon(Icons.map,size: 250.0,),
//          child:Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566991455308&di=701e1740332531e9e26e9f37cb11de17&imgtype=0&src=http%3A%2F%2Fwww.chinadaily.com.cn%2Fhqzx%2Fimages%2Fattachement%2Fjpg%2Fsite385%2F20120924%2F00221918200911ca40e52b.jpg',width: width,height: width/4*3,),
//        )
//      ),
//    );
//  }
//}
//
//
//
//
//
//

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'tuozhuai.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '右滑返回效果+轻量提示+拖动',
      theme: ThemeData.light(),
      home: YouHua_ToolTip_Drag(),
    );
  }
}

class YouHua_ToolTip_Drag extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('右滑返回效果+轻量提示+拖动'),),
      body: ListView(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.map), onPressed: (){Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>YouHua_ToolTip_Drag()));}),
              Text('右滑返回效果')
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.directions_bike), onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ToolTip()));}),
              Text('轻量提示')
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.gesture), onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Drag()));}),
              Text('拖动效果')
            ],
          ),

        ],
      )
    );
  }
}

class ToolTip extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Tooltip(message: '点我',child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566991455308&di=701e1740332531e9e26e9f37cb11de17&imgtype=0&src=http%3A%2F%2Fwww.chinadaily.com.cn%2Fhqzx%2Fimages%2Fattachement%2Fjpg%2Fsite385%2F20120924%2F00221918200911ca40e52b.jpg',width: width,height: width/4*3,),),
    );
  }
}