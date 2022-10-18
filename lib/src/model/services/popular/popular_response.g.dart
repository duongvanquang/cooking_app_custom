// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularResponse _$PopularResponseFromJson(Map<String, dynamic> json) =>
    PopularResponse(
      color: json['color'] as String?,
      commentCount: json['commentCount'] as int?,
      id: json['id'] as String?,
      isFavorite: json['isFavorite'] as bool?,
      isInboxProject: json['isInboxProject'] as bool?,
      isShared: json['isShared'] as bool?,
      isTeamInbox: json['isTeamInbox'] as bool?,
      name: json['name'] as String?,
      order: json['order'] as int?,
      parentId: json['parentId'] as String?,
      url: json['url'] as String?,
      viewStyle: json['viewStyle'] as String?,
    );

Map<String, dynamic> _$PopularResponseToJson(PopularResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('order', instance.order);
  writeNotNull('color', instance.color);
  writeNotNull('name', instance.name);
  writeNotNull('commentCount', instance.commentCount);
  writeNotNull('isShared', instance.isShared);
  writeNotNull('isFavorite', instance.isFavorite);
  writeNotNull('isInboxProject', instance.isInboxProject);
  writeNotNull('isTeamInbox', instance.isTeamInbox);
  writeNotNull('url', instance.url);
  writeNotNull('viewStyle', instance.viewStyle);
  return val;
}
