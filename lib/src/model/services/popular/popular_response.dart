import 'package:json_annotation/json_annotation.dart';

import '../../../commons/data_response.dart';
part 'popular_response.g.dart';

@JsonSerializable(includeIfNull: false)
class PopularResponse extends BaseResponseModel<PopularResponse> {
  PopularResponse(
      {this.color,
      this.commentCount,
      this.id,
      this.isFavorite,
      this.isInboxProject,
      this.isShared,
      this.isTeamInbox,
      this.name,
      this.order,
      this.parentId,
      this.url,
      this.viewStyle});
  String? id;
  String? parentId;
  int? order;
  String? color;
  String? name;
  int? commentCount;
  bool? isShared;
  bool? isFavorite;
  bool? isInboxProject;
  bool? isTeamInbox;
  String? url;
  String? viewStyle;
  @override
  PopularResponse fromJson(Map<String, dynamic> json) =>
      _$PopularResponseFromJson(json);
}
