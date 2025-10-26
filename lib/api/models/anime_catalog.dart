import 'package:json_annotation/json_annotation.dart';
import 'package:yummyani_app/api/models/anime.dart';
import 'package:yummyani_app/api/models/model_json_string.dart';

part 'anime_catalog.g.dart';

@JsonSerializable()
class AnimeCatalog with ModelJsonString {
  AnimeCatalogResponse response;

  AnimeCatalog({required this.response});

  factory AnimeCatalog.fromJson(Map<String, dynamic> json) =>
      _$AnimeCatalogFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeCatalogToJson(this);
}

@JsonSerializable()
class AnimeCatalogResponse with ModelJsonString {
  AnimeCatalogGenres genres;
  List<AnimeCatalogTypes> types;
  List<Anime> data;

  AnimeCatalogResponse({
    required this.genres,
    required this.data,
    required this.types,
  });

  factory AnimeCatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeCatalogResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeCatalogResponseToJson(this);
}

@JsonSerializable()
class AnimeCatalogTypes with ModelJsonString {
  AnimeCatalogType type;
  int count;

  AnimeCatalogTypes({required this.type, required this.count});

  factory AnimeCatalogTypes.fromJson(Map<String, dynamic> json) =>
      _$AnimeCatalogTypesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeCatalogTypesToJson(this);
}

@JsonSerializable()
class AnimeCatalogType with ModelJsonString {
  String name;
  int value;
  String shortname;

  AnimeCatalogType({
    required this.name,
    required this.value,
    required this.shortname,
  });

  factory AnimeCatalogType.fromJson(Map<String, dynamic> json) =>
      _$AnimeCatalogTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeCatalogTypeToJson(this);
}

//GENRES
@JsonSerializable()
class AnimeCatalogGenres with ModelJsonString {
  List<AnimeCatalogGenre> genres;
  List<AnimeCatalogGroup> groups;

  AnimeCatalogGenres({required this.genres, required this.groups});

  factory AnimeCatalogGenres.fromJson(Map<String, dynamic> json) =>
      _$AnimeCatalogGenresFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeCatalogGenresToJson(this);
}

@JsonSerializable()
class AnimeCatalogGenre with ModelJsonString {
  String title;
  String href;
  int value;
  List<String> moreTitles;
  int groupId;

  AnimeCatalogGenre({
    required this.title,
    required this.href,
    required this.value,
    required this.moreTitles,
    required this.groupId,
  });

  factory AnimeCatalogGenre.fromJson(Map<String, dynamic> json) =>
      _$AnimeCatalogGenreFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeCatalogGenreToJson(this);
}

@JsonSerializable()
class AnimeCatalogGroup with ModelJsonString {
  String title;
  int id;

  AnimeCatalogGroup({required this.title, required this.id});

  factory AnimeCatalogGroup.fromJson(Map<String, dynamic> json) =>
      _$AnimeCatalogGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimeCatalogGroupToJson(this);
}
