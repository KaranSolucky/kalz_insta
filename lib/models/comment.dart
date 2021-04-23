import 'user.dart';

class Comment {
  String comment;
  User1 user;
  DateTime dateOfComment;
  bool isLiked;
  Comment(this.user, this.comment, this.dateOfComment, this.isLiked);
}
