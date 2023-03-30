import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class wikiPage extends StatefulWidget {
  const wikiPage({super.key});

  @override
  State<wikiPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<wikiPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wiki for item"),),
      body: SafeArea(child: ListView(children: [
        Column(children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border:Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/firetank.png?alt=media&token=31433b13-1c16-43c8-b8f4-47ef4a68666d"),
              Text("ถังดับเพลิง",style: TextStyle(fontSize:20)),
              Text("ใช้ในการดับไฟทุกชนิดเหมาะสำหรับใช้งานในทุกรูปแบบ แต่มีจำนวนจำกัด",style: TextStyle(fontSize:18))
            ],),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border:Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/bucket.png?alt=media&token=0dc058f2-28e1-40dd-bf86-6b3c8b04906c"),
              Text("ถังน้ำ",style: TextStyle(fontSize:20)),
              Text("ใช้ในการใส่น้ำเพื่อสาดน้ำใส่ไฟเพื่อทำการดับไฟ",style: TextStyle(fontSize:18))
            ],),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border:Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/stick.png?alt=media&token=3725f384-4c2c-474b-a296-63ef2005a489"),
              Text("แท่งไม้",style: TextStyle(fontSize:20)),
              Text("ใช้ในการปิดสวิตช์เครื่องใช้ไฟฟ้าเพื่อทำการตัดกระแสไฟฟ้า",style: TextStyle(fontSize:18))
            ],),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border:Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/cloth.png?alt=media&token=c3662981-c4a3-49b6-a84d-4cb25b3d9d89"),
              Text("ผ้า",style: TextStyle(fontSize:20)),
              Text("ใช้ในการดับไฟแต่ลดพลังชีวิต 2 หน่วยต่อ 1 การดับไฟ",style: TextStyle(fontSize:18))
            ],),
          ),
        ]),

      ],
      )

      ),
    );
  }
}