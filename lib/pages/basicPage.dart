import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class basicPage extends StatefulWidget {
  const basicPage({super.key});

  @override
  State<basicPage> createState() => _basicPageState();
}

class _basicPageState extends State<basicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          margin: EdgeInsets.all(15),
          child: ListView(
            children: [
              Text("  เกมเอาชีวิตรอดจากไฟไหม้ เป็นเกมที่ถูกพัฒนาขึ้นเพื่อเป็นส่วนหนึ่งของรายวิชาโครงงานวิจัยทางเทคโนโลยีสารสนเทศ 1 จัดทำโดยนายพฤกษ์ เงินแดง\n",
              style: TextStyle(fontSize: 20),),
              Image.network("https://firebasestorage.googleapis.com/v0/b/firesurvivalwiki-a3b38.appspot.com/o/Page_1.png?alt=media&token=2119fc44-40d8-40e3-845f-a2439dd2ceed"),
            ],
          ),
        )
      ),
    );
  }
}