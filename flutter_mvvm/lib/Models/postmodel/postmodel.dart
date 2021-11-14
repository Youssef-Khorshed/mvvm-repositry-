// ignore_for_file: avoid_function_literals_in_foreach_calls, prefer_collection_literals, unnecessary_new, unnecessary_this

class GetPosts {
  GetPosts();

  List<Posts> data = [];
  GetPosts.fromJson(List<dynamic> json) {
    data = json.map((e) => Posts.fromJson(e)).toList();
  }
}

class Posts {
  int userId = 0;
  int id = 0;
  String title = '';
  String body = '';
  Posts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  Posts.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}
