import 'package:flutter/material.dart';
import 'package:iconbar_manu/constants.dart';

class User extends StatefulWidget {
  @override
  _User createState() => _User();
}

class _User extends State<User> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account User'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kContentColorLightTheme,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        selectedIconTheme: IconThemeData(color: kContentColorLightTheme),
        selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
        showSelectedLabels: true,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
          ;
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.park), label: "Tree"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Account Login"),
        ],
      ),
    );
  }
}
