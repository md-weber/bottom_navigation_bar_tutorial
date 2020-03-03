import 'package:bottom_navigation_bar_tutorial/screens/child_widget.dart';
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
            Expanded(
              child: ChildWidget(
                number: AvailableNumber.First,
              ),
            ),
            Expanded(
              child: ChildWidget(
                number: AvailableNumber.Second,
              ),
            ),
            Expanded(
              child: ChildWidget(
                number: AvailableNumber.Third,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
