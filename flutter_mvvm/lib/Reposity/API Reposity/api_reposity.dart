import 'package:flutter_mvvm/Dio/dio.dart';
import 'package:flutter_mvvm/Models/postmodel/postmodel.dart';
import 'package:flutter_mvvm/Reposity/abstract_reposity/posts_reposity.dart';

class APIReposity extends MainPostReposity {
  @override
  Future<List<Posts>> getAllPosts() async {
    GetPosts _getPosts = new GetPosts();
    try {
      List<Posts> posts = [];
      var items = await DioHelper.getdata(path: 'posts');
      _getPosts = GetPosts.fromJson(items.data);
    } catch (e) {
      print(e);
    }
    return _getPosts.data;
  }

  @override
  Future<Posts> getPost({int? postId}) {
    // TODO: implement getPost
    throw UnimplementedError();
  }
}
