// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, must_be_immutable, unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/Models/postmodel/postmodel.dart';
import 'package:flutter_mvvm/ViewModel/Home_viewmodel.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeViewModel _data = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('${_data.get_title()}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, inex) =>
                  item(posts: _data.posts, indx: inex),
              separatorBuilder: (context, inex) => Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Container(
                      height: 1,
                      color: Colors.black87,
                    ),
                  ),
              itemCount: _data.posts.length),
        ),
      ),
    );
  }

  Widget item({required List<Posts> posts, required int indx}) {
    return ListTile(
      leading: Icon(Icons.label_important),
      title: Text(posts[indx].title),
      subtitle: Text(posts[indx].body),
      trailing: Text(posts[indx].id.toString()),
    );
  }
}
