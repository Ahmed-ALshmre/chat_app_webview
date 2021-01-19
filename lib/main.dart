import 'dart:async';
import 'package:chat_app_flutter/web2.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.request();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Spl()));
}

class Spl extends StatefulWidget {
  @override
  _SplState createState() => _SplState();
}

class _SplState extends State<Spl> {
  void initState() {
    super.initState();
    displaySplash();
  }

  displaySplash() {
    Timer(Duration(seconds: 10), () async {
      Route route = MaterialPageRoute(builder: (_) => MyApp());
      Navigator.pushReplacement(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Image.asset("assets/m2.jpg"),
      ),
    ));
  }
}
