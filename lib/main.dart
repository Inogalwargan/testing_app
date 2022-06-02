import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testing_app/login_page.dart';

void main() {
  runApp(MyApp());
}

//================ 15. Navigasi Multipage ==============================
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

// ================ 15. Draggable, DragTarget, SizedBox, Material ==============================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     Color color1 = Colors.red;
//     Color Color2 = Colors.amber;
//     Color targetColor;
//     bool isAccepted = false;

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Draggable"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Draggable<Color>(
//                   data: color1,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.grey,
//                       shape: StadiumBorder(),
//                       elevation: 0,
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1.withOpacity(0.5),
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                 ),
//                 Draggable<Color>(
//                   data: Color2,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Color2,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.grey,
//                       shape: StadiumBorder(),
//                       elevation: 0,
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Color2.withOpacity(0.5),
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             DragTarget<Color>(
//               onWillAccept: (value) => true,
//               onAccept: (value) {
//                 isAccepted = true;
//                 targetColor = value;
//               },
//               builder: (context, candidates, rejected) {
//                 return (isAccepted)
//                     ? SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                           // color: Colors.red,
//                           color: targetColor,
//                           shape: StadiumBorder(),
//                           elevation: 0,
//                         ),
//                       )
//                     : SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                           color: Colors.grey,
//                           shape: StadiumBorder(),
//                           elevation: 0,
//                         ),
//                       );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ================ 14. Spacer Widget ==============================
// digunakan untuk mengatur space kosong
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Spacer Widget"),
//         ),
//         body: Center(
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween, //dibagi secara merata space kosongnya

//             children: <Widget>[
//               Spacer(
//                 flex: 1,
//               ),
//               Container(
//                 width: 80,
//                 height: 90,
//                 color: Colors.red,
//               ),
//               Spacer(
//                 flex: 2,
//               ),
//               Container(
//                 width: 80,
//                 height: 90,
//                 color: Colors.green,
//               ),
//               Spacer(
//                 flex: 3,
//               ),
//               Container(
//                 width: 80,
//                 height: 90,
//                 color: Colors.blue,
//               ),
//               Spacer(
//                 flex: 2,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ================ 13. Image Widget ==============================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Image"),
//         ),
//         body: Center(
//           child: Container(
//             width: 500,
//             height: 500,
//             padding: EdgeInsets.all(3),
//             child: Image(
//               image: NetworkImage(
//                   "https://cloud.jpnn.com/photo/ilustrasi/normal/2021/09/11/anggur-9yu7y-prxt.jpg"),
//               //image: AssetImage("images/anggur.jpg"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ================ 12. Stack & Align ==============================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stack & Algin"),
//         ),
//         body: Stack(
//           children: <Widget>[
//             //Background
//             Column(
//               children: <Widget>[
//                 Flexible(
//                     flex: 1,
//                     child: Row(
//                       children: <Widget>[
//                         Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.white,
//                           ),
//                         ),
//                         Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Color.fromARGB(255, 73, 84, 88),
//                           ),
//                         ),
//                       ],
//                     )),
//                 Flexible(
//                     flex: 1,
//                     child: Row(
//                       children: <Widget>[
//                         Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Color.fromARGB(255, 73, 84, 88),
//                           ),
//                         ),
//                         Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     )),
//               ],
//             ),
//             //ListView
//             ListView(
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       child: Text(
//                         "Ini adalah text yang ada di lapisan tengah dari stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             //Button di tengah bawah

//             Align(
//               // alignment: Alignment.bottomCenter,
//               alignment: Alignment(0, 0.95),
//               child: RaisedButton(
//                 onPressed: () {},
//                 child: Text("My Button"),
//                 color: Colors.amber,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// ================ 11. Flexible Widget ==============================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flexible Widget"),
//         ),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.amber,
//                       margin: const EdgeInsets.all(5),
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.blueAccent,
//                       margin: const EdgeInsets.all(5),
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.purpleAccent,
//                       margin: const EdgeInsets.all(5),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 2,
//               child: Container(
//                 color: Colors.green,
//                 margin: const EdgeInsets.all(5),
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Container(
//                 color: Colors.lightBlue,
//                 margin: const EdgeInsets.all(5),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// ================ 10. Animated Container ===========================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Random random = Random();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Animated Container"),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {});
//             },
//             child: AnimatedContainer(
//               color: Color.fromARGB(
//                 255,
//                 random.nextInt(256),
//                 random.nextInt(256),
//                 random.nextInt(256),
//               ),
//               duration: Duration(seconds: 1),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ================ 09. List View ===========================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];

//   int counter = 1;

//   // _MyAppState() {
//   //   for (int i = 0; i < 16; i++)
//   //     widgets.add(
//   //       Text(
//   //         "Data ke-" + i.toString(),
//   //         style: TextStyle(fontSize: 40),
//   //       ),
//   //     );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("List View"),
//         ),
//         body: ListView(children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               RaisedButton(
//                 child: Text("Tambah Data"),
//                 onPressed: () {
//                   setState(() {
//                     widgets.add(Text(
//                       "Data Ke-" + counter.toString(),
//                       style: TextStyle(fontSize: 35),
//                     ));
//                     counter++;
//                   });
//                 },
//               ),
//               RaisedButton(
//                 child: Text("Hapus Data"),
//                 onPressed: () {
//                   setState(() {
//                     widgets.removeLast();
//                     counter--;
//                   });
//                 },
//               ),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: widgets,
//           )
//         ]),
//       ),
//     );
//   }
// }

//================= 08. TextStyle ===========================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Text Style"),
//         ),
//         body: Center(
//           child: Text(
//             "Ini Adalah Text",
//             style: TextStyle(
//               fontFamily: "Roboto",
//               fontSize: 30,
//               fontStyle: FontStyle.italic,
//               decoration: TextDecoration.overline,
//               decorationColor: Colors.lightBlue,
//               decorationThickness: 2,
//               decorationStyle: TextDecorationStyle.dashed,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//================= 07. Anonymous Method ====================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // var message;

//   String message = "ini adalah text";

//   void tombolDitekan() {
//     setState(() {
//       message = "Tombol Sudah Di Tekan";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Anonymous Method"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(message),
//               RaisedButton(
//                 child: Text("Tekan Saya"),
//                 // onPressed: tombolDitekan,
//                 //dibawah ini adalah contoh Anonymous Method
//                 onPressed: () {
//                   setState(() {
//                     message = "Tombol Sudah Di Tekan";
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//================ 06. Stateless & Stateful Widget ===================
// class MyApp extends StatefulWidget {
//   MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;
//   int resetNumber = 0;

//   void resetTombol() {
//     setState(() {
//       number = 0;
//     });
//   }

//   void tekanTombol() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("State Full Widget Demo"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 number.toString(),
//                 style: TextStyle(
//                     fontSize: 20 + number.toDouble(),
//                     fontWeight: FontWeight.bold),
//               ),
//               RaisedButton(
//                 child: Text("Tambah Bilangan"),
//                 onPressed: tekanTombol,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: <Color>[Colors.amber, Colors.blue])),
//                 child: RaisedButton(
//                   child: Text("Reset Bilangan"),
//                   onPressed: resetTombol,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//================ 05. Container Widget ===================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Container Widget"),
//         ),
//         body: Container(
//           color: Colors.red,
//           margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
//           // margin: EdgeInsets.all(10),
//           padding: EdgeInsets.all(10),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: <Color>[Colors.amber, Colors.blue]),
//             ),
//             // color: Colors.lightBlue,
//             // margin: EdgeInsets.all(10),
//           ),
//         ),
//       ),
//     );
//   }
// }

//================ 04. Row And Column ===================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Row And Column")),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Text("Text 1"),
//             Text("Text 2"),
//             Text("Text 3"),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               // crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Text("Text 4"),
//                 Text("Text 5"),
//                 Text("Text 6")
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//================ 03. Text Widget ===================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Text Widget"),
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.lightBlue,
//             width: 150,
//             height: 100,
//             child: const Text(
//               "Saya Sedang melatih kemampuan flutter saya",
//               // maxLines: 2,
//               // overflow: TextOverflow.ellipsis,
//               // overflow: TextOverflow.clip,
//               // softWrap: false,
//               // textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.w700,
//                   fontSize: 20),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//================ 02. Aplikasi Pertama Hello World ===================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: const Text("Aplikasi 1 Hello World")),
//       body: Center(child: Text("Hello World")),
//     ),
//   );
// }
// }
//=========================== 01. Pengenalan Flutter ======================
