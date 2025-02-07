import 'package:flutter/material.dart';


class StarRating extends StatelessWidget {
 final int totalStars;
 final double size;
 final Color color;
 final bool fillStar;


 const StarRating({
   super.key,
   this.totalStars = 3,
   this.size = 24.0,
   this.color = Colors.red,
   this.fillStar = false,
 });

 @override
 Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: List.generate(
         totalStars,
         (index) => Icon(
           fillStar ? Icons.star : Icons.star_border,
           size: size,
           color: color,
         ),
       ),
     ),
   );
 }
}
