import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegistrView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed('/login');
          },
        ),
        title: const Text('Регистрация'),
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
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 28, bottom: 28),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(120, 255, 153, 1),
                  Color.fromARGB(126, 203, 39, 218),
                  Color.fromARGB(130, 81, 0, 255)
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Зарегистрироваться',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Container(
                width: width,
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Логин',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: width,
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: width,
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Повторите пароль',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/main');
                  },
                  child: Text('Зарегистрироваться'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 117, 82, 255),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
