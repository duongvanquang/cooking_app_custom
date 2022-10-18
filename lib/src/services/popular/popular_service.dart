import 'package:cooking_app/src/commons/base_service.dart';
import 'package:cooking_app/src/commons/data_response.dart';
import 'package:cooking_app/src/commons/data_result.dart';
import 'package:cooking_app/src/commons/rest_utils.dart';
import 'package:cooking_app/src/model/services/popular/popular_request.dart';
import 'package:cooking_app/src/model/services/popular/popular_response.dart';

class PopularService extends BaseService {
  PopularService(RestUtils restUtils) : super(restUtils);
  Future<DataResult<DataResponse<PopularResponse>>> getListPopular(
      PopularRequest request) async {
    return rest.request<PopularResponse>(Method.get, '/projects',
        data: request.toJson());
  }
}
