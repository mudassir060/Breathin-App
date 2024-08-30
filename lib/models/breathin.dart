class BreathinModel {
  String? image;
  String? docId;
  String? url;
  String? title;
  String? mood;
  String? duration;
  List? favourite;
  BreathinModel({
    this.docId,
    this.image,
    this.url,
    this.title,
    this.mood,
    this.duration,
    this.favourite,
  });

  BreathinModel.fromJson(Map<String, dynamic> json, String this.docId) {
    image = json['image'];
    url = json['url'];
    title = json['title'];
    mood = json['mood'];
    duration = json['duration'];
    favourite = json['favourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['docId'] = docId;
    data['image'] = image;
    data['url'] = url;
    data['title'] = title;
    data['mood'] = mood;
    data['duration'] = duration;
    data['favourite'] = favourite;
    return data;
  }
}
