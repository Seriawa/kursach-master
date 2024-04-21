// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudentRatingPspu'),
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
        actions: [
          SizedBox(width: 10),
          TextButton(
            onPressed: () {
              Get.toNamed('/login');
            },
            child: Text(
              'Логин',
              style: TextStyle(
                color: Color.fromARGB(255, 250, 250, 250),
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Домашняя страница',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
