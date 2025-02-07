import 'package:flutter/material.dart';
import 'package:techbrowse/stars.dart';


class Screen extends StatelessWidget {
  final String title;
  final String title2;
  final String description;
  final int price;
  final bool fillStar;
  final Color color;


  const Screen({
    super.key,
    required this.title,
    required this.title2,
    required this.description,
    required this.price,
    required this.fillStar,
    required this.color,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Row(
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      letterSpacing: 3.5,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Text(
                    title2,
                    style: const TextStyle(
                       // commit-second fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text(
                      description,
                      style: const TextStyle(fontSize: 16),
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Price: $price",
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                        child: StarRating(fillStar: fillStar),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
