class Movie {
  int? id;
  String? title;
  double? voteAverage;
  String? releaseDate;
  String? overview;
  String? posterPath;

  Movie(this.id, this.title, this.voteAverage, this.releaseDate,
      this.overview, this.posterPath);

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    title = json['title'] as String?;
    voteAverage = (json['vote_average'] as num?)?.toDouble();
    releaseDate = json['release_date'] as String?;
    overview = json['overview'] as String?;
    posterPath = json['poster_path'] as String?;
  }
}