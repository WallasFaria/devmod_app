import 'beedback_model.dart';
import 'link_model.dart';
import 'member_model.dart';
import 'photo_model.dart';

class EventModel {
  int id;
  String title;
  String description;
  String address;
  DateTime startsAt;
  DateTime endsAt;
  String image;
  String category;
  String status;
  List<MemberModel> participants;
  List<FeedbackModel> feedbacks;
  List<PhotoModel> photos;
  List<LinkModel> links;

  EventModel({
    this.id,
    this.title,
    this.description,
    this.address,
    this.startsAt,
    this.endsAt,
    this.image,
    this.status,
    this.participants,
    this.feedbacks,
    this.category,
    this.photos,
    this.links,
  });

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    address = json['address'];
    category = json['category'];
    if (json['starts_at'] != null)
      startsAt = DateTime.tryParse(json['starts_at']);
    if (json['ends_at'] != null) endsAt = DateTime.tryParse(json['ends_at']);
    image = json['image'];
    status = json['status'];
    if (json['participants'] != null) {
      participants = new List<MemberModel>();
      json['participants'].forEach((v) {
        participants.add(new MemberModel.fromJson(v));
      });
    }
    if (json['feedbacks'] != null) {
      feedbacks = new List<FeedbackModel>();
      json['feedbacks'].forEach((v) {
        feedbacks.add(new FeedbackModel.fromJson(v));
      });
    }
    if (json['photos'] != null) {
      photos = new List<PhotoModel>();
      json['photos'].forEach((v) {
        photos.add(new PhotoModel.fromJson(v));
      });
    }
    if (json['links'] != null) {
      links = new List<LinkModel>();
      json['links'].forEach((v) {
        links.add(new LinkModel.fromJson(v));
      });
    }
  }
}
