import 'member_model.dart';

class FeedbackModel {
  String content;
  DateTime createdAt;
  MemberModel author;

  FeedbackModel({this.content, this.createdAt, this.author});

  FeedbackModel.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    createdAt = DateTime.tryParse(json['created_at']);
    author = json['author'] != null
        ? new MemberModel.fromJson(json['author'])
        : null;
  }
}
