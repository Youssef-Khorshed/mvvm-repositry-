import 'package:flutter_mvvm/Models/postmodel/postmodel.dart';

abstract class MainPostReposity {
  Future<List<Posts>> getAllPosts();
  Future<Posts> getPost({int? postId});
}
