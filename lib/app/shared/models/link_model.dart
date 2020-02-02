class LinkModel {
  String kind;
  String url;
  String title;

  LinkModel({this.kind, this.url, this.title});

  LinkModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    url = json['url'];
    title = json['title'];
  }
}
