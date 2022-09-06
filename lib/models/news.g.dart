// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      author: json['author'] as String?,
      content: json['content'] as String?,
      date: json['date'] as String?,
      imageUrl: json['imageUrl'] as String?,
      readMoreUrl: json['readMoreUrl'] as String?,
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'date': instance.date,
      'imageUrl': instance.imageUrl,
      'readMoreUrl': instance.readMoreUrl,
    };
