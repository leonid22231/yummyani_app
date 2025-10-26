// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCatalog _$AnimeCatalogFromJson(Map<String, dynamic> json) => AnimeCatalog(
  response: AnimeCatalogResponse.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AnimeCatalogToJson(AnimeCatalog instance) =>
    <String, dynamic>{'response': instance.response};

AnimeCatalogResponse _$AnimeCatalogResponseFromJson(
  Map<String, dynamic> json,
) => AnimeCatalogResponse(
  genres: AnimeCatalogGenres.fromJson(json['genres'] as Map<String, dynamic>),
  data: (json['data'] as List<dynamic>)
      .map((e) => Anime.fromJson(e as Map<String, dynamic>))
      .toList(),
  types: (json['types'] as List<dynamic>)
      .map((e) => AnimeCatalogTypes.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AnimeCatalogResponseToJson(
  AnimeCatalogResponse instance,
) => <String, dynamic>{
  'genres': instance.genres,
  'types': instance.types,
  'data': instance.data,
};

AnimeCatalogTypes _$AnimeCatalogTypesFromJson(Map<String, dynamic> json) =>
    AnimeCatalogTypes(
      type: AnimeCatalogType.fromJson(json['type'] as Map<String, dynamic>),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeCatalogTypesToJson(AnimeCatalogTypes instance) =>
    <String, dynamic>{'type': instance.type, 'count': instance.count};

AnimeCatalogType _$AnimeCatalogTypeFromJson(Map<String, dynamic> json) =>
    AnimeCatalogType(
      name: json['name'] as String,
      value: (json['value'] as num).toInt(),
      shortname: json['shortname'] as String,
    );

Map<String, dynamic> _$AnimeCatalogTypeToJson(AnimeCatalogType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'shortname': instance.shortname,
    };

AnimeCatalogGenres _$AnimeCatalogGenresFromJson(Map<String, dynamic> json) =>
    AnimeCatalogGenres(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => AnimeCatalogGenre.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => AnimeCatalogGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeCatalogGenresToJson(AnimeCatalogGenres instance) =>
    <String, dynamic>{'genres': instance.genres, 'groups': instance.groups};

AnimeCatalogGenre _$AnimeCatalogGenreFromJson(Map<String, dynamic> json) =>
    AnimeCatalogGenre(
      title: json['title'] as String,
      href: json['href'] as String,
      value: (json['value'] as num).toInt(),
      moreTitles: (json['more_titles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      groupId: (json['group_id'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeCatalogGenreToJson(AnimeCatalogGenre instance) =>
    <String, dynamic>{
      'title': instance.title,
      'href': instance.href,
      'value': instance.value,
      'more_titles': instance.moreTitles,
      'group_id': instance.groupId,
    };

AnimeCatalogGroup _$AnimeCatalogGroupFromJson(Map<String, dynamic> json) =>
    AnimeCatalogGroup(
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeCatalogGroupToJson(AnimeCatalogGroup instance) =>
    <String, dynamic>{'title': instance.title, 'id': instance.id};
