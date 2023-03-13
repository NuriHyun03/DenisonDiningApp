import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DbtoDart extends ChangeNotifier {
  final dataCollection = FirebaseFirestore.instance.collection('daily-menu');

  Future<QuerySnapshot> read(String name, String timeslot) {
    //print(dataCollection.doc(name).get());
    return dataCollection.doc(name).collection(timeslot).get();
  }

  List<String> stringToList(String input) {
    return input.split('\n');
  }
}
