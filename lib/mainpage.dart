import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});


  final String title;

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
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

              child:  SizedBox(
                height:100, //height of button
                width:500, //width of button
                child: ElevatedButton(

        // Within the SecondScreen widget
        onPressed: () {
          // Navigate back to the first screen by popping the current route
          // off the stack.
          Navigator.pop(context);
    },
      child: const Text('Go back!'),
    ),
              ),
            ),
            Container(

              child:  SizedBox(
                height:100, //height of button
                width:500, //width of button
                child: ElevatedButton(

                  // Within the SecondScreen widget
                  onPressed: () {
                    // Navigate back to the first screen by popping the current route
                    // off the stack.
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              ),
            ),
            Container(

              child:  SizedBox(
                height:100, //height of button
                width:500, //width of button
                child: ElevatedButton(

                  // Within the SecondScreen widget
                  onPressed: () {
                    // Navigate back to the first screen by popping the current route
                    // off the stack.
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              ),
            ),
            Container(

              child:  SizedBox(
                height:100, //height of button
                width:500, //width of button
                child: ElevatedButton(

                  // Within the SecondScreen widget
                  onPressed: () {
                    // Navigate back to the first screen by popping the current route
                    // off the stack.
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              ),
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
