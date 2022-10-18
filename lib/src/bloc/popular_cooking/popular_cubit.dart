import 'package:cooking_app/src/bloc/popular_cooking/popular_state.dart';
import 'package:cooking_app/src/commons/base_cubit.dart';
import 'package:cooking_app/src/model/services/popular/popular_request.dart';

import '../../services/popular/popular_service.dart';

class PopularCookingCubit extends BaseCubit<PopularCookingState> {
  final PopularService _popularService;
  PopularCookingCubit(this._popularService)
      : super(const PopularCookingState.initial());
  Future<void> getCookingPopular() async {
    final _request = PopularRequest();
    try {
      final res = await _popularService.getListPopular(_request);
      if (res.isSuccess) {
        emit(PopularCookingState.success(
            popularResponse: res.data!.dataResponse));
      } else {
        emit(const PopularCookingState.error(messager: 'Error'));
      }
    } catch (e) {
      emit(const PopularCookingState.error(messager: 'Error'));
    }
  }
}
