import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';
import 'package:flutter_demo/responsive/desktop_body.dart';
import 'package:flutter_demo/responsive/mobile_body.dart';
import 'package:flutter_demo/responsive/responsive_layout.dart';

void main() => runApp(const MyApp());

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: MobileBody(),
          desktopBody: DesktopBody()),
    );
  }
}

