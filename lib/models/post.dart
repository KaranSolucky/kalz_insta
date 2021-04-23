import 'package:flutter/material.dart';
import 'user.dart';
import 'comment.dart';

class Post {
  AssetImage image;
  String description;
  User1 user;
  List<User1> likes;
  List<Comment> comments;
  DateTime date;
  bool isLiked;
  bool isSaved;

  Post(this.image, this.user, this.description, this.date, this.likes,
      this.comments, this.isLiked, this.isSaved);
}
