import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Hello World"),
                    ),
                  );
                },
                child: Container(
                  child: Image.asset("assets/undraw_reading_book.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
