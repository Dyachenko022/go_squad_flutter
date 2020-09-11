import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _number_of_times_pressed = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Button pressed $_number_of_times_pressed times',
        style: TextStyle(
          fontFamily: 'Oswald',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w300,
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _number_of_times_pressed++;
          });
        },
      ),
    );
  }
}
