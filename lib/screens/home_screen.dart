import 'package:bottom_navigation_bar_tutorial/screens/child_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int currentIndex = 0;

  Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 200),
            curve: Curves.linear,
          );

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("First"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text("Second"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text("Third"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text("Third"),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            currentIndex = page;
          });
        },
        children: <Widget>[
          ChildWidget(number: AvailableNumber.First),
          ChildWidget(number: AvailableNumber.Second),
          ChildWidget(number: AvailableNumber.Third),
          ChildWidget(number: AvailableNumber.Third)
        ],
      ),
    );
  }
}
