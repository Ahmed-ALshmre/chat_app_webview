import 'dart:async';
import 'package:chat_app_flutter/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  InAppWebViewController webView;
  String url = "";
  double progress = 0;
   bool lod=true;
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar:AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {
                    if (webView != null) {
                      webView.reload();
                    }
                  },
                ),
              ),
            ],
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
            title: Text(
              "بنوتة قلبي",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff050619),
          ),
          body:InAppWebView(
            initialOptions: InAppWebViewGroupOptions(
                android: AndroidInAppWebViewOptions(useHybridComposition: true),
                crossPlatform: InAppWebViewOptions(
                  debuggingEnabled: false,
                )),
            initialUrl: "https://www.iraqiachat.com/",
            initialHeaders: {},
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onLoadStart: (InAppWebViewController controller, String url) {
              setState(() {
                this.url = url;
              });
            },
            onLoadStop: (InAppWebViewController controller, String url) async {
              setState(() {
                this.url = url;
              });
            },

          )
        ),
      );

  }
 Widget splexh(){
    return Center(
      child: Image.asset("assets/m2.jpg"),
    );
 }

}
