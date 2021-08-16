import 'package:flutter/material.dart';
import 'package:my_plant/Guest.dart';
import 'package:my_plant/Register.dart';
import 'login.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home: MyHome(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // ignore: non_constant_identifier_names
  Widget Showguest() {
    return Container(
      width: 110,
      height: 110,
      child: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Viewguest();
            }));
          },
          child: Image.asset('images/icons/34.png'),
        ),
      ),
    );
  }

  Widget IconLogin() {
    return Container(
      width: 110,
      height: 110,
      child: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FormLogin();
            }));
          },
          child: Image.asset('images/icons/33.png'),
        ),
      ),
    );
  }

  Widget IconRegister() {
    return Container(
      width: 110,
      height: 110,
      child: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FormRegister();
            }));
          },
          child: Image.asset('images/icons/32.png'),
        ),
      ),
    );
  }

  Widget Showimage() {
    return Container(
      width: 300,
      height: 300,
      child: Image.asset('images/icons/35.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconLogin(),
                    IconRegister(),
                    Showguest(),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Showimage(),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
        //    Showimages(),
      ),
    );
  }
}
