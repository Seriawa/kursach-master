import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MainView extends StatelessWidget {
  final List<String> items = [
    'Студент 1',
    'Студент 2',
    'Студент 3',
    'Студент 4',
    'Студент 5',
    'Студент 6',
    'Студент 7',
    'Студент 8',
    'Студент 9',
    'Студент 10',
    'Студент 11',
    'Студент 12',
    'Студент 13',
    'Студент 14',
    'Студент 15',
    'Студент 16',
    'Студент 17'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromARGB(255, 81, 0, 255),
                Color.fromARGB(193, 203, 39, 218),
                Color.fromARGB(162, 255, 153, 1),
                Color.fromARGB(255, 82, 82, 82)
              ]),
        )),
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Get.toNamed('/login');
          },
        ),
        title: Text('StudentRatingPspu'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Get.toNamed('/lichkab');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              margin: EdgeInsets.only(bottom: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                title: Text(items[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
