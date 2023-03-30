import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class firewikiPage extends StatefulWidget {
  const firewikiPage({super.key});

  @override
  State<firewikiPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<firewikiPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wiki for Fire"),),
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
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/fire.png?alt=media&token=2997c530-4213-4541-af34-bcb3bbec844d"),
              Text("ไฟจากความแห้ง",style: TextStyle(fontSize:20)),
              Text("เป็นอัคคีภัยที่เกิดจากความร้อนในอากาศ การเสียดสีกันของใบไม้ และเหตุการณ์ธรรมชาติเช่น ฟ้าผ่า เป็นต้น",style: TextStyle(fontSize:18))
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
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/Efire.png?alt=media&token=6c76d024-bd74-48eb-88de-63394ca9976a"),
              Text("ไฟจากไฟฟ้า",style: TextStyle(fontSize:20)),
              Text("เป็นอัคคีภัยที่เกิดจากไฟฟ้าเช่น ไฟฟ้ารัดวงจร ไฟฟ้าขัดข้องเป็นต้น ไม่เหมาะกับการใช้น้ำในการดับไฟเพราะอาจทำให้เกิดอันตรายมากขึ้น",style: TextStyle(fontSize:18))
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
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/wind.png?alt=media&token=6e47af64-9197-43ac-90fd-372a77604a96"),
              Text("ไฟที่เกิดจากการลุกลาม",style: TextStyle(fontSize:20)),
              Text("เป็นไฟประเภทที่เกิดขึ้นจากการพัดพาเปลวเพลิงในบรรยากาศที่มีลมพัดแรง",style: TextStyle(fontSize:18))
            ],),
          ),
        ]),

      ],
      )

      ),
    );
  }
}