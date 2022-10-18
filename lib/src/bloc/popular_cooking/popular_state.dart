import '../../model/services/popular/popular_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'popular_state.freezed.dart';

@freezed
class PopularCookingState with _$PopularCookingState {
  const factory PopularCookingState.initial() = PopularCookingStateInitial;
  const factory PopularCookingState.success(
      {PopularResponse? popularResponse}) = PopularCookingStateSuccess;
  const factory PopularCookingState.error({required String messager}) =
      PopularCookingStateError;
}
