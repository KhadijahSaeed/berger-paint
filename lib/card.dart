import 'package:flutter/material.dart';


class CardB extends StatefulWidget {
  const CardB({super.key});

  @override
  State<CardB> createState() => _CardBState();
}

class _CardBState extends State<CardB> {

bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
    alignment: Alignment.centerRight,
    children: [
      Container(
        
        alignment: Alignment.bottomLeft,
        height: 120,
        width: 110,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Image(image: AssetImage("assets/images/b1.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text("Berger all Guard",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text("GHS 230",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),
              ),
            )
         
        ],),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Padding(
             padding: const EdgeInsets.only(top: 10),
             child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
               child: Icon(
                isFavorite ?
                Icons.favorite_outlined : Icons.favorite_border_outlined,
               color: Colors.red,
               ),
             ),
           ),
           SizedBox(
            height: 70,
           ),
           InkWell
           (
            onTap: () {
              
            },
             child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Color(0xffffc670),
                  height: 20,
                  width: 20,
                ),
                
                   Icon(Icons.add)
                  
                
              ],
             ),
           )
        ],
      )
    ],
  ),
    );
  }
}