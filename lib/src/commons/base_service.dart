import 'package:cooking_app/src/commons/rest_utils.dart';

abstract class BaseService {
  late RestUtils rest;
  BaseService(RestUtils restUtils) {
    rest = restUtils;
  }
}
