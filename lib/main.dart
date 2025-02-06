import 'package:flutter/material.dart';
import '/Screens/pen_drive.dart';

void main(){
  runApp(MaterialApp(home: Home(),));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => PenDrive()),
              );
            },
            child: Text(
              "Pen Drive",
              style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}
