import 'package:flutter/material.dart';
import 'package:testing_app/main_page.dart';

//================ 15. Navigasi Multipage ==============================
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Back"),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) {
                return MainPage();
              }),
            );
          },
        ),
      ),
    );
  }
}
