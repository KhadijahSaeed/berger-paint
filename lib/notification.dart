import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() =>
      _NotificationPageState();
}

class _NotificationPageState
    extends State<NotificationPage> {
  List<String> notes = [
    'Hello',
    'How are you doing',
    'How are you doing',
    'How are you doing',
    'How are you doing',
    'How are you doing',
    'How are you doing',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                debugPrint('${notes.length}');
                setState(() {
                  notes.clear();
                });
                debugPrint('${notes.length}');
              },
              child: const Text(
                "Clear",
                style: TextStyle(
                    color: Color(0xffffc670),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  
                },
                leading: CircleAvatar(),
                title: Text(notes[index]),
                subtitle: Text("Your order has been conformed"),
                trailing: Text("New",style: TextStyle(
                  color: Color(0xffffc670)
                ),),
              ),
            );
          }),
    );
  }
}
