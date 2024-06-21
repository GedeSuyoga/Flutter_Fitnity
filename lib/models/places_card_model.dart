class PlacesCardModel {
  final String imageUrl;
  final String type;
  final String title;
  final String location;
  final String moreInfoText;
  final String url;

  PlacesCardModel(
      {required this.imageUrl,
      required this.type,
      required this.title,
      required this.location,
      required this.moreInfoText,
      required this.url});

  factory PlacesCardModel.fromJson(Map<String, dynamic> json) {
    return PlacesCardModel(
        imageUrl: json['image_url'],
        type: json['type'],
        title: json['title'],
        location: json['location'],
        moreInfoText: json['more_info_text'],
        url: json['url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
      'type': type,
      'title': title,
      'location': location,
      'more_info_text': moreInfoText,
      'url': url,
    };
  }
}
