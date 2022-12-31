import "./questions/questions.dart";
import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_cup/questions/questionsPage.dart';

void main() => runApp( LandingPage());

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Flag.fromCode(
                FlagsCode.US,
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),

              if (Flag.flagsCode.contains('AF'.toLowerCase()))
                Flag.fromString(
                  'af',
                  height: 10,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(

                    child: ElevatedButton(
                        child: Text('ARG'),
                        onPressed:()=>{
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MainPage(title: '',)),
                          )
                        }
                    ),

                  ),
                  Container(

    child:
                    ElevatedButton(
                      child: Text('ARG'),
                    onPressed:()=>{
                        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage(title: '',)),
                    )
                      }
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                        child: Text('ARG'),
                        onPressed:()=>{
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MainPage(title: '',)),
                          )
                        }
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                        child: Text('ARG'),
                        onPressed:()=>{
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MainPage(title: '',)),
                          )
                        }
                    ),
                  ),
                ],
              ),
              // if (displayFlagPicker != null)
              //   FlagPicker(
              //     width: 50,
              //     height: 300,
              //     preCache: displayFlagPicker!,
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
//
// class FlagPicker extends StatefulWidget {
//   const FlagPicker({Key? key, this.width, this.height, this.preCache = false})
//       : super(key: key);
//
//   final double? width;
//   final double? height;
//   final bool preCache;
//
//   @override
//   _FlagPicker createState() => _FlagPicker();
// }
//
// class _FlagPicker extends State<FlagPicker> {
//   late FixedExtentScrollController _controller;
//   late int _currentIndex;
//
//   @override
//   void initState() {
//     super.initState();
//     _currentIndex = 0;
//     _controller = FixedExtentScrollController(
//       initialItem: _currentIndex,
//     );
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     if (widget.preCache) {
//       Flag.preloadFlag(context: context);
//     }
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: widget.height,
//       width: widget.width,
//       child: CupertinoPicker.builder(
//         scrollController: _controller,
//         offAxisFraction: 0.0,
//         itemExtent: 40,
//         childCount: Flag.flagsCode.length,
//         useMagnifier: true,
//         magnification: 1.0,
//         diameterRatio: 0.8,
//         onSelectedItemChanged: (value) {
//           setState(() {
//             print(value);
//           });
//         },
//         itemBuilder: (context, index) => Center(
//           child: Flag.fromString(
//             Flag.flagsCode[index],
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:page_view_sliding_indicator/page_view_sliding_indicator.dart';
//
//
// void main() {
//   runApp(LandingPage());
// }
//
// class LandingPage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final PageController controller = PageController(initialPage: 0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 300,
//             child: PageView(
//               scrollDirection: Axis.horizontal,
//               controller: controller,
//               children: const <Widget>[
//                 Center(
//                   child: Image(image: Image.asset('icons/flags/png/fr.png', package: 'country_icons'),)
//                 ),
//                 Center(
//                   child: Text('Second Page'),
//                 ),
//                 Center(
//                   child: Text('Third Page'),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 24,
//           ),
//           PageViewSlidingIndicator(
//             pageCount: 3,
//             controller: controller,
//             size: 8,
//           ),
//         ],
//       ),
//     );
//   }
// }