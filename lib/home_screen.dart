import 'package:flutter/material.dart';
import 'package:untitled4/screens/body1.dart';
import 'package:untitled4/screens/body2.dart';
import 'package:untitled4/screens/body3.dart';

class HomeScreen extends StatefulWidget {
  String email;
   HomeScreen({ super.key, required this.email, });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =0;
  List <Widget> page =[
    body1(),
    body2(),
    body3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios),
        ),
      ),
       body:Column(children: [
         Container(
           height: 300,
             child: page[currentIndex]),
         Center(
             child: Text(widget.email,style: TextStyle(
                 fontSize: 30
             ),)),
       ],),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'body1'),
        BottomNavigationBarItem(icon: Icon(Icons.security),label: 'body2'),
        BottomNavigationBarItem(icon: Icon(Icons.more),label: 'body3'),
      ],
      onTap: (value){
        setState(() {
          currentIndex =value;
        });
        print (value);
      },
      ),
    );
  }
}
