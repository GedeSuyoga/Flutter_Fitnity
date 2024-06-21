class TipsCardModel {
  final String imageUrl;
  final String source;
  final String title;
  final String smalldesc;
  final String pages;

  TipsCardModel({
    required this.imageUrl,
    required this.source,
    required this.title,
    required this.smalldesc,
    required this.pages,
  });

  factory TipsCardModel.fromJson(Map<String, dynamic> json) {
    return TipsCardModel(
      imageUrl: json['image_url'],
      source: json['source'],
      title: json['title'],
      smalldesc: json['smalldesc'],
      pages: json['pages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
      'source': source,
      'title': title,
      'smalldesc': smalldesc,
      'pages': pages,
    };
  }
}
