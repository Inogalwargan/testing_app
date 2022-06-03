import 'package:flutter/material.dart';
import 'package:testing_app/main_page.dart';
import 'package:testing_app/third_page.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Back to Main Page"),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }),
                );
              },
            ),
            RaisedButton(
              child: Text("Thrid Page"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return thirdPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
