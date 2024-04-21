import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lichkab_controller.dart';

class LichkabView extends GetView<LichkabController> {
  const LichkabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed('/main');
          },
        ),
          title: const Text('LichkabView'),
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
          centerTitle: true,
        ),
        body: Row(children: [
          Container(
            margin: const EdgeInsets.only(top: 28, left: 28),
            padding: const EdgeInsets.all(16.0),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: const Center(
              child: Icon(Icons.photo),
            ),
          ),
          const SizedBox(
            width: 200,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Danil', textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26, ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Moiseev',textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Denisovich',textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  '1227',textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Perm State Humanitarian and Pedagogical University',textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ]));
  }
}
