import 'dart:html';

import 'package:berger_paint_delivery_app/favourite.dart';
import 'package:berger_paint_delivery_app/home.dart';
import 'package:berger_paint_delivery_app/location.dart';
import 'package:berger_paint_delivery_app/notification.dart';
import 'package:berger_paint_delivery_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List screens = [
    {"screen": const HomeView(), "title": ""},
    {
      "screen": const FavouriteView(),
      "title": "Favourite"
    },
    {
      "screen": const LocationView(),
      "title": "Location"
    },
    {
      "screen": const ProfileView(),
      "title": "Profile"
    },
  ];
  int currentIndex = 0;
  onPageSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // showSearch(
    //     context: context,
    //     delegate: MySearchDelegate());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          screens[currentIndex]["title"],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NotificationPage();
                  },
                ),
              );
            },
          )
        ],
        elevation: 0,
        backgroundColor: Color(0xffffc670),
        bottom:  Tab(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "search",
                prefixIcon: InkWell(
                  onTap: (){},
                  child:const Icon(Icons.search)),
                 suffixIcon:InkWell(
                  onTap: (){},
                   child: const Icon(
                    Icons.clear,
                   ),
                 ),
                contentPadding:
                   const 
                   EdgeInsets.all(10),
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none
                    ),
                    ),
          ),
        )),
      ),
      body: screens[currentIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onPageSelected,
          backgroundColor: Color(0xffffc670),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons
                    .favorite_outline_rounded),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_pin),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "")
          ]),
    );
  }
}

// class MySearchDelegate extends SearchDelegate {
  
//   @override
//   Widget? buildLeading(BuildContext context) =>
//       IconButton(
//         onPressed: () => close(context, Null),
//         icon: const Icon(Icons.arrow_back),
//       );
//   @override
//   List<Widget>? buildActions(
//           BuildContext context) =>
//       [
//         IconButton(
//           onPressed: () {
//             if (query.isEmpty) {
//               close(context, null);
//             } else {
//               query = '';
//             }
//           },
//           icon: const Icon(Icons.clear),
//         ),
//       ];
//   @override
//   Widget buildResults(BuildContext context) =>
//       Center(
//         child: Text(
//           query,
//           style: const TextStyle(),
//         ),
//       );
//   @override
//   Widget buildSuggestion(BuildContext context) {
//     var searchResults;
//     List<String> suggestions =
//       searchResults.where((searchResults) {
//     final result = searchResults.toLowerCase();
//     final input = query.toLowerCase();
//     return result.contains(input);
//   }).toList();
  


//     return ListView.builder(
//         itemCount: suggestions.length,
//         itemBuilder: (context, index) {
//           final suggestion = suggestions[index];
//           return ListTile(
//             title: Text(suggestion),
//             onTap: () {
//               query = suggestion;
//               showResults(context);
//             },
//           );
//         });
//   }

//   @override
//   dynamic noSuchMethod(Invocation invocation) =>
//       super.noSuchMethod(invocation);
// }
