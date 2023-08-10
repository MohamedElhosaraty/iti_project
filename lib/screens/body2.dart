import 'package:flutter/material.dart';

class body2 extends StatefulWidget {
  const body2({Key? key}) : super(key: key);

  @override
  State<body2> createState() => _body2State();
}

class _body2State extends State<body2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('body2',style: TextStyle(
          fontSize: 30
      ),)),
    );
  }
}
