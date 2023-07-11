import 'package:flutter/material.dart';

class Card1B extends StatefulWidget {
  const Card1B({super.key});

  @override
  State<Card1B> createState() => _Card1BState();
}

class _Card1BState extends State<Card1B> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          MediaQuery.of(context).size.width / 2.6,
      height: MediaQuery.of(context).size.height /
          4.22,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
          ),
      child: Stack(children: [
        Positioned(
            top: MediaQuery.of(context)
                    .size
                    .height /
                84.4,
            right: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite == true
                    ? Icons.favorite_rounded
                    : Icons
                        .favorite_outline_rounded,
                color: Colors.red,
                size: 30,
              ),
            ),
            ),
        Positioned(
          top:
              MediaQuery.of(context).size.height /
                  20,
          left:
              MediaQuery.of(context).size.height /
                  45.2,
          child: Image.asset(
            "assets/images/b.png",
            height: MediaQuery.of(context)
                    .size
                    .width /
                4.62,
            width: MediaQuery.of(context)
                    .size
                    .width /
                3.57,
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context)
                    .size
                    .height /
                16.88,
            left: MediaQuery.of(context)
                    .size
                    .width /
                15.66,
            child: Text("Berger all guard",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ),
        Positioned(
            bottom: MediaQuery.of(context)
                    .size
                    .height /
                28.13,
            left: MediaQuery.of(context)
                    .size
                    .width /
                7.8,
            child: Text("GHS 490",
            style: TextStyle(
                fontWeight: FontWeight.bold),
            ),
            ),
        Positioned(
          bottom:
              MediaQuery.of(context).size.height *
                  0,
          right:
              MediaQuery.of(context).size.width *
                  0,

          child: InkWell(
            onTap: (() {
              
            }),
            child: Icon(
              Icons.add_box_rounded,
              color: Color(0xffffc670),
              size: 30,
            ),
          ),
        ),
      ]),
      // child: Column(
      //   // alignment: Alignment.center,
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Container(
      //       height: MediaQuery.of(context)
      //               .size
      //               .height /
      //           4.10,
      //       width: MediaQuery.of(context)
      //               .size
      //               .width /
      //           2.6,
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //             color: Colors.grey),
      //         borderRadius:
      //             BorderRadius.circular(15),
      //       ),
      //       child: Column(
      //         children: [
      //           Align(
      //             alignment: Alignment.topRight,
      //             child: GestureDetector(
      //               onTap: () {
      //                 setState(() {
      //                   isFavorite =
      //                       !isFavorite;
      //                 });
      //               },
      //               child: Padding(
      //                 padding: EdgeInsets.only(
      //                   top: MediaQuery.of(
      //                               context)
      //                           .size
      //                           .height /
      //                       84.4,
      //                 ),
      //                 child: Icon(
      //                   isFavorite == true
      //                       ? Icons
      //                           .favorite_outlined
      //                       : Icons
      //                           .favorite_border_outlined,
      //                   color: Colors.red[300],
      //                   size: MediaQuery.of(
      //                               context)
      //                           .size
      //                           .height /
      //                       24.11,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Stack(),
      //           Container(
      //             height: MediaQuery.of(context)
      //                     .size
      //                     .height /
      //                 8.44,
      //             width: MediaQuery.of(context)
      //                     .size
      //                     .width /
      //                 5.57,
      //             decoration: BoxDecoration(
      //               image:
      //                   const DecorationImage(
      //                 image: AssetImage(
      //                     "assets/images/b2.png"),
      //               ),
      //             ),
      //           ),
      //           Text(
      //             "Berger all Guard",
      //             style: TextStyle(
      //               fontSize:
      //                   MediaQuery.of(context)
      //                           .size
      //                           .height /
      //                       70.33,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           Text(
      //             "GHS 490",
      //             style: TextStyle(
      //                 fontSize:
      //                     MediaQuery.of(context)
      //                             .size
      //                             .height /
      //                         70.33,
      //                 fontWeight:
      //                     FontWeight.bold),
      //           ),
      //           Align(
      //             alignment:
      //                 Alignment.bottomRight,
      //             child: GestureDetector(
      //               onTap: () {},
      //               child: Container(
      //                 color: const Color(
      //                     0xffffc670),
      //                 height:
      //                     MediaQuery.of(context)
      //                             .size
      //                             .height /
      //                         28.13,
      //                 width:
      //                     MediaQuery.of(context)
      //                             .size
      //                             .width /
      //                         13.00,
      //                 child: Padding(
      //                   padding:
      //                       const EdgeInsets
      //                               .only(
      //                           bottom: 5),
      //                   child: Icon(
      //                     Icons.add,
      //                     size: MediaQuery.of(
      //                                 context)
      //                             .size
      //                             .height /
      //                         28.13,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // )
      // Stack(
      //   alignment: Alignment.centerRight,
      //   children: [
      //     Container(
      //       alignment: Alignment.bottomLeft,
      //       height: 300,
      //       width: 250,
      //       decoration: BoxDecoration(
      //           border: Border.all(
      //               color: Colors.grey),
      //           borderRadius:
      //               BorderRadius.circular(8)),
      //       child: Column(
      //         crossAxisAlignment:
      //             CrossAxisAlignment.start,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(
      //                 top: 6),
      //             child: Image(
      //               image: AssetImage(
      //                   "assets/images/b2.png"),
      //             ),
      //           ),

      //         ],
      //       ),
      //     ),
      //     Column(
      //       mainAxisAlignment:
      //           MainAxisAlignment.spaceBetween,
      //       children: [
      //         Padding(
      //           padding:
      //               const EdgeInsets.only(top: 0),
      //           child: GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 isFavorite = !isFavorite;
      //               });
      //             },
      //             child: Icon(
      //               isFavorite
      //                   ? Icons.favorite_outlined
      //                   : Icons
      //                       .favorite_border_outlined,
      //               color: Colors.red[300],
      //               size: 40,
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: MediaQuery.of(context)
      //                   .size
      //                   .height *
      //               0.2,
      //         ),
      //         InkWell(
      //           onTap: () {},
      //           child: Stack(
      //             alignment: Alignment.bottomRight,
      //             children: [
      //               Container(
      //                 color: Color(0xffffc670),
      //                 height: 30,
      //                 width: 30,
      //               ),
      //               Icon(
      //                 Icons.add,
      //                 size: 30,
      //               ),
      //             ],
      //           ),
      //         )
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
