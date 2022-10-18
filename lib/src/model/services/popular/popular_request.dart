import 'package:json_annotation/json_annotation.dart';

import '../../../commons/baserequest_model.dart';

part 'popular_request.g.dart';

@JsonSerializable()
class PopularRequest extends BaseRequestModel {
  PopularRequest();
  @override
  Map<String, dynamic> toJson() => _$PopularRequestToJson(this);
}
