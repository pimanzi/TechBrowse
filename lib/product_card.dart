import 'package:flutter/material.dart';
import 'package:techbrowse/screen.dart';
import 'package:techbrowse/stars.dart';


class ProductCard extends StatelessWidget {
 final String title;
 final String title2;
 final String description;
 final int price;
 final Color color;
 final bool fillStar;


 const ProductCard(
     {super.key,
     required this.title,
     required this.title2,
     required this.description,
     required this.price,
     required this.color,
     required this.fillStar});


 @override
 Widget build(BuildContext context) {
   return InkWell(
     onTap: () {
       Navigator.push(
         context,
         MaterialPageRoute(
           builder: (context) => Screen(
             title: title,
             title2: title2,
             description: description,
             price: price,
             fillStar: fillStar,
             color: color,
           ),
         ),
       );
     },
     child: Card(
       elevation: 4,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
       ),
       margin: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             width: 180,
             height: 150,
             color: color,
             child: Center(
               child: Text(
                 title,
                 style: const TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.w300,
                   letterSpacing: 1.5,
                   color: Colors.white,
                 ),
               ),
             ),
           ),
  
           ),
                   ),
                   Padding(
                     padding: EdgeInsets.fromLTRB(3, 2, 10, 2),
                     child: Text(
                       description,
                       style: const TextStyle(
                           fontSize: 15, fontWeight: FontWeight.w500),
                       softWrap: true,
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                     child: Text(
                       "Price: $price",
                       style: const TextStyle(
                         fontSize: 16,
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                     child: StarRating(
                       fillStar: fillStar,
                     ),
                   )
                 ],
               ),
             ),
           ),
         ],
       ),
     ),
   );
 }
}


