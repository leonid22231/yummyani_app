// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
  animeId: (json['anime_id'] as num).toInt(),
  animeStatus: AnimeStatus.fromJson(
    json['anime_status'] as Map<String, dynamic>,
  ),
  animeUrl: json['anime_url'] as String,
  poster: AnimePoster.fromJson(json['poster'] as Map<String, dynamic>),
  rating: AnimeRating.fromJson(json['rating'] as Map<String, dynamic>),
  title: json['title'] as String,
  type: AnimeType.fromJson(json['type'] as Map<String, dynamic>),
  year: (json['year'] as num).toInt(),
  description: json['description'] as String,
  views: (json['views'] as num).toInt(),
  season: (json['season'] as num).toInt(),
);

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
  'anime_id': instance.animeId,
  'anime_status': instance.animeStatus,
  'anime_url': instance.animeUrl,
  'poster': instance.poster,
  'rating': instance.rating,
  'title': instance.title,
  'type': instance.type,
  'year': instance.year,
  'description': instance.description,
  'views': instance.views,
  'season': instance.season,
};

AnimeMinAge _$AnimeMinAgeFromJson(Map<String, dynamic> json) => AnimeMinAge(
  value: (json['value'] as num).toInt(),
  title: json['title'] as String,
  titleLong: json['title_long'] as String,
);

Map<String, dynamic> _$AnimeMinAgeToJson(AnimeMinAge instance) =>
    <String, dynamic>{
      'value': instance.value,
      'title': instance.title,
      'title_long': instance.titleLong,
    };

AnimeType _$AnimeTypeFromJson(Map<String, dynamic> json) => AnimeType(
  name: json['name'] as String,
  value: (json['value'] as num).toInt(),
  shortname: json['shortname'] as String,
);

Map<String, dynamic> _$AnimeTypeToJson(AnimeType instance) => <String, dynamic>{
  'name': instance.name,
  'value': instance.value,
  'shortname': instance.shortname,
};

AnimeRating _$AnimeRatingFromJson(Map<String, dynamic> json) => AnimeRating(
  average: (json['average'] as num).toInt(),
  kpRating: (json['kp_rating'] as num).toInt(),
  anidubRating: (json['anidub_rating'] as num).toInt(),
  counters: (json['counters'] as num).toInt(),
  myanimelistRating: (json['myanimelist_rating'] as num).toInt(),
  shikimoriRating: (json['shikimori_rating'] as num).toInt(),
  worldartRating: (json['worldart_rating'] as num).toInt(),
);

Map<String, dynamic> _$AnimeRatingToJson(AnimeRating instance) =>
    <String, dynamic>{
      'average': instance.average,
      'kp_rating': instance.kpRating,
      'anidub_rating': instance.anidubRating,
      'counters': instance.counters,
      'myanimelist_rating': instance.myanimelistRating,
      'shikimori_rating': instance.shikimoriRating,
      'worldart_rating': instance.worldartRating,
    };

AnimePoster _$AnimePosterFromJson(Map<String, dynamic> json) => AnimePoster(
  small: json['small'] as String,
  medium: json['medium'] as String,
  big: json['big'] as String,
  huge: json['huge'] as String,
  fullsize: json['fullsize'] as String,
  mega: json['mega'] as String,
);

Map<String, dynamic> _$AnimePosterToJson(AnimePoster instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'big': instance.big,
      'huge': instance.huge,
      'fullsize': instance.fullsize,
      'mega': instance.mega,
    };

AnimeStatus _$AnimeStatusFromJson(Map<String, dynamic> json) => AnimeStatus(
  title: $enumDecode(_$AnimeStatusTitleEnumMap, json['title']),
  classStatus: json['class'] as String,
  alias: $enumDecode(_$AnimeStatusAliasEnumMap, json['alias']),
  value: (json['value'] as num).toInt(),
);

Map<String, dynamic> _$AnimeStatusToJson(AnimeStatus instance) =>
    <String, dynamic>{
      'title': _$AnimeStatusTitleEnumMap[instance.title]!,
      'class': instance.classStatus,
      'alias': _$AnimeStatusAliasEnumMap[instance.alias]!,
      'value': instance.value,
    };

const _$AnimeStatusTitleEnumMap = {
  AnimeStatusTitle.released: 'вышел',
  AnimeStatusTitle.ongoing: 'онгоинг',
  AnimeStatusTitle.announcement: 'анонс',
};

const _$AnimeStatusAliasEnumMap = {
  AnimeStatusAlias.released: 'released',
  AnimeStatusAlias.ongoing: 'ongoing',
  AnimeStatusAlias.announcement: 'announcement',
};
