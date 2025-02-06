import 'package:flutter/material.dart';

class PenDrive extends StatelessWidget {
  const PenDrive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pen Drive", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 237, 66, 2),
      ) ,
      
      body: Column(

        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 175, 64, 93),
              child: Center(
                child: Text(
                  "PenDrive",
                  style: TextStyle(
                    fontSize:50,
                    color: Colors.white
                  ),
                ),

              ),
            ),
          ),

          Expanded(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text("Pen drive", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20),
                    Text("Pen Drive is the best you ever see", style: TextStyle(
                      fontSize: 20,
                    ),),

                    SizedBox(height: 20),
                    Text("Price: 2000", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.star_border, color: Colors.red,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.star_border, color: Colors.red,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.star_border, color: Colors.red,),
                        ),

                      ],
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
