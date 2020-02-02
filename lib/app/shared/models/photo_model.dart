import 'member_model.dart';

class PhotoModel {
  String url;
  MemberModel author;
  DateTime createdAt;

  PhotoModel({this.url, this.author, this.createdAt});

  PhotoModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    author = json['author'] != null
        ? new MemberModel.fromJson(json['author'])
        : null;
    if (json['created_at'] != null)
      createdAt = DateTime.tryParse(json['created_at']);
  }
}
