import 'package:denison_dining_app2/toggle_buttons.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/Cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:path_provider/path_provider.dart';
import 'firestoreApi.dart';
import 'package:like_button/like_button.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  ScrollController listScrollController = ScrollController();
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
    ..loadRequest(Uri.parse('https://denison.cafebonappetit.com/'));
  Widget build(BuildContext context) {
    return Consumer<DbtoDart>(
      builder: (context, dbtoDart, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Community',
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Lora",
              ),
            ),
            backgroundColor: const Color.fromRGBO(200, 16, 46, 1),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: menuListbyTimeslot(dbtoDart, 'slayter-market', 'Breakfast'),
          ),
        );
      },
    );
  }

  FutureBuilder<QuerySnapshot<Object?>> menuListbyTimeslot(
      DbtoDart dbtoDart, String name, String timeslot) {
    return FutureBuilder<QuerySnapshot>(
        future: dbtoDart.read(name, timeslot),
        builder: (context, snapshot) {
          final documents = snapshot.data?.docs ?? [];
          return ListView.builder(
            controller: listScrollController,
            shrinkWrap: true,
            itemCount: documents.length,
            itemBuilder: (context, index) {
              final doc = documents[index];

              String breakfast = doc.get('Name');
              int likes = doc.get('Like');
              return ListTile(
                title: Text(
                  breakfast,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                trailing: HeartButton(),
              );
            },
          );
        });
  }
}
