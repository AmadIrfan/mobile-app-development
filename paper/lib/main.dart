import 'package:flutter/material.dart';
import 'package:paper/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//
class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  String text = '';
  // Model m = Model.abc(name: 'Amad', email: 'amad');
  @override
  Widget build(BuildContext context) {
    // Size s = MediaQuery.of(context).size;
// 0 1
// 01
    return Scaffold(
        appBar: AppBar(
          actions: [
            DropdownButton(items: [], onChanged: (v) {}),
            Checkbox(
              value: false,
              onChanged: (v) {},
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Text('asdas'),
                // TextField(
                //   decoration: InputDecoration(
                //     label: Text('data'),
                //   ),
                //   onChanged: (v) => setState(() {
                //     text = v;
                //   }),
                // ),
                // GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       i++;
                //     });
                //   },
                //   child: Container(
                //     // width: 200,
                //     // height: 200,
                //     color: Colors.red,
                //   ),
                // ),
                // Expanded(
                //   child: Container(
                //     color: Colors.red,
                //   ),
                // ),
                // AspectRatio(
                //   aspectRatio: 1,
                //   child: Text('amad'),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Text(i.toString()),
                // ),
                // Transform.rotate(
                //   angle: -340,
                //   child: Container(
                //     width: 200,
                //     height: 200,
                //     color: Colors.amber,
                //   ),
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     // Navigator.push(
                //     //   // context,
                //     // );
                //     // showModalBottomSheet(
                //     //     context: context,
                //     //     builder: (context) => Container(
                //     //           color: Colors.amber,
                //     //         ));
                //   },
                //   child: const Text('model sheet'),
                // ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.amber,
                        height: 60,
                        // width: 50,
                        child: Column(
                          children: [
                            Text('datasdsdfdfsd'),
                            Text('datasdsdfdfsd'),
                            Text('datasdsdfdfsd'),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.green,
                        // width: 50,
                        child: Text('data'),
                      ),
                      Container(
                        color: Colors.red,
                        // width: 50,
                        child: Text('data'),
                      ),
                    ],
                  ),
                ),
                // // ConstrainedBox(constraints: BoxConstraints()),
                // DefaultTextStyle(
                //   style: TextStyle(),
                //   child: Text('amasd'),
                // ),
                // Text(
                //   'amad',
                // ),
                // LinearProgressIndicator(),
                // CircularProgressIndicator(),
                // Container(
                //   height: 200,
                //   decoration: BoxDecoration(color: Colors.amber, boxShadow: []),
                // ),
                // // Spacer(
                // //   flex: 2,
                // // ),
                // Container(
                //   height: 200,
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [Colors.red, Colors.amber, Colors.blue],
                //     ),
                //   ),
                //   // color: Colors.red,
                // ),
                // Container(
                //   height: 200,
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [Colors.red, Colors.amber, Colors.blue],
                //     ),
                //   ),
                //   // color: Colors.red,
                // ),
                // Container(
                //   height: 200,
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [Colors.red, Colors.amber, Colors.blue],
                //     ),
                //   ),
                //   // color: Colors.red,
                // ),
                // Container(
                //   height: 200,
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [Colors.red, Colors.amber, Colors.blue],
                //     ),
                //   ),
                //   // color: Colors.red,
                // ),
                // Container(
                //   height: 200,
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [Colors.red, Colors.amber, Colors.blue],
                //     ),
                //   ),
                //   // color: Colors.red,
                // ),
                // Container(
                //   height: 200,
                //   color: Colors.green,
                // ),
              ],
            ),
          ),
        )
        // Stack(children: [
        //   Positioned(left: 30, child: Text('amad')),
        //   Positioned(top: 30, child: Text('yasir')),
        //   Positioned(child: Container()),
        // ]),
        );
  }
}
// floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           i++;
//           setState(() {});
//           print(i);
//         },
//         child: Icon(Icons.add),
//       ),
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int i = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       // body: Stack(
//       //   children: [
//       //     Text('AMad'),
//       //     Text('AMna'),
//       //   ],
//       // ),
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Card(
//             child: Text('amad'),
//           ),
//           TextField(),
//           // Expanded(
//           //     child: Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     Text('AMna'),
//           //   ],
//           // )),
//           const Text(
//             'You have pushed the button this many times:',
//           ),
//           Text(i.toString()),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             i++;
//           });
//           // ScaffoldMessenger.of(context).showSnackBar(
//           //   SnackBar(
//           //     content: Text('amna'),
//           //   ),
//           // );
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//     // return Column(
//     //   children: [
//     //     AppBar(),
//     //     Container(
//     //       child: Text('amna'),
//     //     ),
//     //   ],
//     // );
//   }
// }
