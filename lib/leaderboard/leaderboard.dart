import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';
void main () async{


  runApp(Leaderboard());
}
class Leaderboard extends StatefulWidget {
  fireBase()async{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    DatabaseReference ref = FirebaseDatabase.instance.ref("users");

    await ref.update({
      "123/age": 1111111111,
      "123/address/line1": "1 Mountain View",
    });}
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<Leaderboard> {





  List<Map> _books = [
    {
      'id': 100,
      'Name': 'yasser',
      'score': '88'
    },
    {
      'id': 102,
      'Name': 'Khalid',
      'score': '55'
    },
    {
      'id': 101,
      'Name': 'Ahmad ',
      'score': ' 22'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Leaderboard'),
        ),
        body: ListView(
          children: [
            _createDataTable()
          ],
        ),
      ),
    );
  }
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }
  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('ID')),
      DataColumn(label: Text('Book')),
      DataColumn(label: Text('Author'))
    ];
  }
  List<DataRow> _createRows() {
    return _books
        .map((book) => DataRow(cells: [
      DataCell(Text('#' + book['id'].toString())),
      DataCell(Text(book['title'])),
      DataCell(Text(book['author']))
    ]))
        .toList();
  }
}
// Basic styling and config