import 'package:flutter/material.dart';
import 'questions/questionsPage.dart';
import 'animated_bottom_navigation_bar.dart';
import "./landingPage.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const MyHomePage(title: 'World cup app',),
          '/questions': (context) => const MainPage(title: 'quiz',),
          '/second': (context) => LandingPage(),

        },
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text(widget.title),
      ),
    body: Center(
    child: Column(
      children: [
        Container(

            child: Text("Welcome in World Cup quiz app",style: TextStyle(fontSize: 40),),

            ),
        Container(

          child: Text("Welcome in World Cup quiz app",style: TextStyle(fontSize: 40),),

        ),
        Container(

          child: TextButton(
onPressed: () {
  // Navigate to the second screen using a named route.
  Navigator.pushNamed(context, '/second');
},
child: Text("Start World Cup Quizz"),
        ),
        ),
      ],
    ),

    ),


    );


  }
}
