import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'dart:io';

class huffmanHall extends StatefulWidget {
  huffmanHall({Key? key}) : super(key: key);

  @override
  State<huffmanHall> createState() => _huffmanHallState();
}

class _huffmanHallState extends State<huffmanHall> {
  @override
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
        Uri.parse('https://denison.cafebonappetit.com/cafe/huffman-cafe/'));
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //app bar design
        backgroundColor: const Color.fromRGBO(200, 16, 46, 1),
        title: Text(
          'Denison University',
          style: TextStyle(
            fontSize: 25,
            fontFamily: "Lora",
          ),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
