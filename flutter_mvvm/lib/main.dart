// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/Dio/dio.dart';
import 'package:flutter_mvvm/Reposity/API%20Reposity/api_reposity.dart';
import 'package:flutter_mvvm/Reposity/FakeData/Fakerepositry.dart';
import 'package:flutter_mvvm/ViewModel/Home_viewmodel.dart';
import 'package:flutter_mvvm/Views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  DioHelper.dio_intial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) =>
                HomeViewModel(mainPostReposity: APIReposity())..Getposts())
      ],
      child: MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
