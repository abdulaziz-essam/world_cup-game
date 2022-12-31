import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_cup/landingPage.dart';



void main() => runApp( Leaderboard());

class Leaderboard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? displayFlagPicker;
List score=[{"score":4 ,"name":"ahmad"},{"score":4 ,"name":"ahmad"},{"score":4 ,"name":"ahmad"},{"score":4 ,"name":"ahmad"}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Game Over',

        ),

             SizedBox(height: 20),
            Container(
              height: 500,
              width: 500,
              child: SingleChildScrollView(
                child: DefaultTextStyle(
                  style: const TextStyle(color: Colors.white),
                  child: DataTable(
                      dataTextStyle: const TextStyle(color: Colors.white),
                      columns: const [
                        DataColumn(
                          label: Text('Rank'),
                        ),
                        DataColumn(
                          label: Text('Name'),
                        ),
                        DataColumn(
                          label: Text('Score'),
                        ),
                      ],
                      rows: List.generate(score.length, (index) {
                        final leaderboard = score[index];
                        return DataRow(
                          cells: [
                            DataCell(Text('${index + 1}')),
                            DataCell(Text(
                              // leaderboard.name,
"a"

                              ),
                            ),
                            DataCell(Text("yes")),
                        // leaderboard.score.toString())
                          ],
                        );
                      })),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


