class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        // thumb = json['thumb'],
        rating = json['rating'],
        date = json['date'];
}