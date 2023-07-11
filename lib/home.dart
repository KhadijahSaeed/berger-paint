import 'package:berger_paint_delivery_app/card.dart';
import 'package:berger_paint_delivery_app/card1.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() =>
      _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          15, 10, 15, 0),
      child: Column(
        children: [
          Container(
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "ATTRACTIVE DISCOUNTS ON",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "INTERIOR EMULSION",
                        style: TextStyle(
                            fontWeight:
                                FontWeight.bold,
                            fontSize: 18),
                      ),
                      const Padding(
                        padding:
                            const EdgeInsets.all(
                                8.0),
                        child: Text(
                          "Starting from GHS 220",
                          style: TextStyle(
                              fontSize: 10),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(
                                        const Color(
                                            0xffffc670))),
                            onPressed: () {},
                            child: const Align(
                              alignment: Alignment
                                  .center,
                              child: Text(
                                "BUY NOW",
                                style: TextStyle(
                                    fontSize: 8),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                    "assets/images/pb.png")
              ],
            ),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10),
                color: const Color.fromARGB(
                    255, 241, 201, 248)),
          ),
          SizedBox(
              height: MediaQuery.of(context)
                      .size
                      .height *
                  0.02),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hot Deals",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight:
                                FontWeight.bold,
                            color:
                                Color(0xffffc670),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder:
                          (context, index) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Card1B(),
                          ));
                      },
                    ),
                    height: MediaQuery.of(context)
                            .size
                            .height /
                        4,
                  ),
                  // SingleChildScrollView(
                  //   scrollDirection:
                  //       Axis.horizontal,
                  //   child: Row(

                  //     children: const [
                  //     CardB(),

                  //     Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 10),
                  //       child: CardB(),
                  //     ),
                  //     CardB(),
                  //     Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 10),
                  //       child: CardB(),
                  //     ),

                  //   ]),
                  // ),
                  SizedBox(
                      height:
                          MediaQuery.of(context)
                                  .size
                                  .height *
                              0.03),
                  const Align(
                    alignment:
                        Alignment.bottomLeft,
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context)
                            .size
                            .height *
                        0.01,
                  ),
                  const Card1B(),

                  SizedBox(
                    height: MediaQuery.of(context)
                            .size
                            .height *
                        0.01,
                  ),
                  const Card1B(),
                  SizedBox(
                    height: MediaQuery.of(context)
                            .size
                            .height *
                        0.01,
                  ),
                  const Card1B(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
