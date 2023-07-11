import 'package:berger_paint_delivery_app/home.dart';
import 'package:berger_paint_delivery_app/main_page.dart';
import 'package:berger_paint_delivery_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color (0xffffc670),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
            const Center(
                 child: Text("Berger", 
          style: TextStyle(fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.white
          ),
          ) ,
            ),
             SizedBox(
              height:MediaQuery.of(context).size.height*0.01,
              ),
              const Text("Paint your imagination",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height*0.08,
              ),
              const Text("Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              ),
             SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: "Email"
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
               TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: (){},
                    child:const Icon(Icons.lock,
                    color: Colors.black,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: "password"
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Align(

                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: (){},
                  child: Text("Forget password"))
                ),
                SizedBox(
                  height: 25,
                ),
               ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return const HomePage();
                  })
                  ));
                },
                child: const Text(" Login",
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  fixedSize: const Size(3500, 60),
                  textStyle: const TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  primary: const Color(0xffffc670),
                  onPrimary: Colors.white,
                  side:const  BorderSide(color: Colors.white, width: 4),

                ),
                ),
                 SizedBox(
                 height: MediaQuery.of(context).size.height*0.02,
                  
                ),
                Column(
                 children: [
                    Align(alignment: Alignment.bottomLeft,
                      child: InkWell(
                        onTap: (){Get.to(const SignUpPage());},
                        child: const Text("Sign Up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 10,
                          fontWeight:FontWeight.bold
                          ),
                        ),
                      ),
                      
                    ),
                    Align(alignment: Alignment.bottomLeft,
                      child: Text("Don't have an Account?",
                      style: TextStyle(color: Colors.white),
                      )
                      ),
                  ],
                )
          ],
          ),
      )
    );
  }
}
//  Navigator.push(context, MaterialPageRoute(builder: (context) {
                      // return const SignUpPage();
                    // },