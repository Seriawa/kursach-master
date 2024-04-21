import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kursach/app/modules/home/views/home_view.dart';
import 'package:kursach/app/modules/lichkab/views/lichkab_view.dart';
import 'package:kursach/app/modules/login/views/login_view.dart';
import 'package:kursach/app/modules/main/views/main_view.dart';
import 'package:kursach/app/modules/registr/views/registr_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'StudentRatingPspu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeView()),
        GetPage(name: '/registration', page: () => RegistrView()),
        GetPage(name: '/login', page: () => LoginView()),
        GetPage(name: '/main', page: () => MainView()),
        GetPage(name: '/lichkab', page: () => LichkabView())
      ],
    );
  }
}