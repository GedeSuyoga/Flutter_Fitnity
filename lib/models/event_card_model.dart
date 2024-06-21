class EventCardModel {
  final String imageUrl;
  final String date;
  final String title;
  final String location;
  final String moreInfoText;
  final String url;

  EventCardModel({
    required this.imageUrl,
    required this.date,
    required this.title,
    required this.location,
    required this.moreInfoText,
    required this.url,
  });

  factory EventCardModel.fromJson(Map<String, dynamic> json) {
    return EventCardModel(
      imageUrl: json['image_url'],
      date: json['date'],
      title: json['title'],
      location: json['location'],
      moreInfoText: json['more_info_text'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
      'date': date,
      'title': title,
      'location': location,
      'more_info_text': moreInfoText,
      'url': url,
    };
  }
}
