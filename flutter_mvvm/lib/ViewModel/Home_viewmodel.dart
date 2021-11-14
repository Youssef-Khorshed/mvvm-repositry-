// ignore_for_file: file_names, non_constant_identifier_names, avoid_print, unused_import, unnecessary_new, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/Dio/dio.dart';
import 'package:flutter_mvvm/Models/postmodel/postmodel.dart';
import 'package:flutter_mvvm/Reposity/API%20Reposity/api_reposity.dart';
import 'package:flutter_mvvm/Reposity/abstract_reposity/posts_reposity.dart';

class HomeViewModel extends ChangeNotifier {
  final String _title = 'News';
  List<Posts> posts = [];
  MainPostReposity mainPostReposity;

  HomeViewModel({required this.mainPostReposity});
  void Getposts() async {
    posts = await mainPostReposity.getAllPosts();
    notifyListeners();
  }

  String get_title() => _title;
}
