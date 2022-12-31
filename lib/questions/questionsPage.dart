import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questions.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPage();
}


class _MainPage extends State<MainPage> {
  int _counter = 0;
  int ques_number=0;
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
    Questions question_obj = new Questions();
    List questions=question_obj.getCountryQuestions();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 200, top: 20, right: 0, bottom: 20),
            child: Text(
            questions[ques_number],
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 200, top: 0, right: 0, bottom: 20),
            child: SizedBox(
              height: 100, //height of button
              width: 500, //width of button

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  side: BorderSide(color: Colors.black, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                // Within the SecondScreen widget
                onPressed: () {
                setState(() {
                  if(ques_number<2){
                    ques_number+=1;
                    print("a");
                  }else{
                    ques_number=0;
                    print("b");
                  }
                });


                },
                child: const Text('10!'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 200, top: 0, right: 0, bottom: 20),
            child: SizedBox(
              height: 100, //height of button
              width: 500, //width of button
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
            margin: EdgeInsets.only(left: 200, top: 0, right: 0, bottom: 20),
            child: SizedBox(
              height: 100, //height of button
              width: 500, //width of button
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
            margin: EdgeInsets.only(left: 200, top: 0, right: 0, bottom: 20),
            child: SizedBox(
              height: 100, //height of button
              width: 500, //width of button
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
    );
  }
}
