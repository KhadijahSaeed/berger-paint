import 'package:berger_paint_delivery_app/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffc670),
      body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context)
                        .size
                        .height *
                    0.1,
              ),
              const Center(
                child: Text(
                  "Berger",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Paint your imagination",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10)),
                    ),
                    hintText: "Username"),
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10)),
                    ),
                    hintText: "Mobile"),
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10)),
                    ),
                    hintText: "Email"),
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10)),
                    ),
                    hintText: "Password"),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) {
                    return CheckoutPage();
                  }));
                },
                child: const Text("Signin"),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.all(20),
                  fixedSize: const Size(3500, 50),
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  primary:
                      const Color(0xffffc670),
                  onPrimary: Colors.white,
                  side: const BorderSide(
                      color: Colors.white,
                      width: 4),
                  shape:
                      const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(
                                  Radius.circular(
                                      10))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        decoration: TextDecoration
                            .underline,
                        fontSize: 10,
                        fontWeight:
                            FontWeight.bold),
                  ),
                ),
              ]),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Already have an Account?",
                    style: TextStyle(
                        color: Colors.white),
                  )),
            ],
          )),
    );
  }
}
