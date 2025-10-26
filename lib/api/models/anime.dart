// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:yummyani_app/api/models/model_json_string.dart';

part 'anime.g.dart';

@JsonSerializable()
class Anime with ModelJsonString {
  int animeId;
  AnimeStatus animeStatus;
  String animeUrl;
  AnimePoster poster;
  AnimeRating rating;
  String title;
  AnimeType type;
  int year;
  String description;
  int views;
  int season;

  Anime({
    required this.animeId,
    required this.animeStatus,
    required this.animeUrl,
    required this.poster,
    required this.rating,
    required this.title,
    required this.type,
    required this.year,
    required this.description,
    required this.views,
    required this.season,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}

@JsonSerializable()
class AnimeMinAge with ModelJsonString {
  int value;
  String title;
  String titleLong;
  AnimeMinAge({
    required this.value,
    required this.title,
    required this.titleLong,
  });

  factory AnimeMinAge.fromJson(Map<String, dynamic> json) =>
      _$AnimeMinAgeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeMinAgeToJson(this);
}

@JsonSerializable()
class AnimeType with ModelJsonString {
  String name;
  int value;
  String shortname;
  AnimeType({required this.name, required this.value, required this.shortname});

  factory AnimeType.fromJson(Map<String, dynamic> json) =>
      _$AnimeTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeTypeToJson(this);
}

@JsonSerializable()
class AnimeRating with ModelJsonString {
  int average;
  int kpRating;
  int anidubRating;
  int counters;
  int myanimelistRating;
  int shikimoriRating;
  int worldartRating;
  AnimeRating({
    required this.average,
    required this.kpRating,
    required this.anidubRating,
    required this.counters,
    required this.myanimelistRating,
    required this.shikimoriRating,
    required this.worldartRating,
  });

  factory AnimeRating.fromJson(Map<String, dynamic> json) =>
      _$AnimeRatingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeRatingToJson(this);
}

@JsonSerializable()
class AnimePoster with ModelJsonString {
  String small;
  String medium;
  String big;
  String huge;
  String fullsize;
  String mega;
  AnimePoster({
    required this.small,
    required this.medium,
    required this.big,
    required this.huge,
    required this.fullsize,
    required this.mega,
  });

  String getPoster() {
    String poster = fullsize;
    if (!poster.startsWith('https')) {
      poster = 'https:$poster';
    }
    return poster;
  }

  factory AnimePoster.fromJson(Map<String, dynamic> json) =>
      _$AnimePosterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimePosterToJson(this);
}

@JsonSerializable()
class AnimeStatus with ModelJsonString {
  AnimeStatusTitle title;
  @JsonKey(name: 'class')
  String classStatus;
  AnimeStatusAlias alias;
  int value;

  AnimeStatus({
    required this.title,
    required this.classStatus,
    required this.alias,
    required this.value,
  });

  factory AnimeStatus.fromJson(Map<String, dynamic> json) =>
      _$AnimeStatusFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeStatusToJson(this);
}

@JsonEnum(valueField: 'ruName')
enum AnimeStatusTitle {
  released('вышел'),
  ongoing('онгоинг'),
  announcement('анонс');

  final String ruName;
  const AnimeStatusTitle(this.ruName);
}

enum AnimeStatusAlias { released, ongoing, announcement }
