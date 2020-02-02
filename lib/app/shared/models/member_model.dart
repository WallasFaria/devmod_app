class MemberModel {
  int id;
  String name;
  String avatar;

  MemberModel({this.id, this.name, this.avatar});

  MemberModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
  }
}
