// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter_mvvm/Models/postmodel/postmodel.dart';
import 'package:flutter_mvvm/Reposity/abstract_reposity/posts_reposity.dart';

class FakeRepositry extends MainPostReposity {
  @override
  Future<List<Posts>> getAllPosts() async {
    List<Posts> posts = [Posts(id: 1, body: "hello", title: "h1", userId: 1)];
    print("fake");
    return await posts;
  }

  @override
  Future<Posts> getPost({int? postId}) {
    // TODO: implement getPost
    throw UnimplementedError();
  }
}
