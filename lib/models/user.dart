import 'post.dart';
import 'package:flutter/material.dart';

class User1 {
  String username;
  List<Post> posts;
  AssetImage profilePicture;
  List<User1> followers;
  List<User1> following;
  List<Post> savedPosts;
  bool hasStory;

  User1(this.username, this.profilePicture, this.followers, this.following,
      this.posts, this.savedPosts, this.hasStory);
}
