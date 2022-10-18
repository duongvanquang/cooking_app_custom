// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PopularCookingStateTearOff {
  const _$PopularCookingStateTearOff();

  PopularCookingStateInitial initial() {
    return const PopularCookingStateInitial();
  }

  PopularCookingStateSuccess success({PopularResponse? popularResponse}) {
    return PopularCookingStateSuccess(
      popularResponse: popularResponse,
    );
  }

  PopularCookingStateError error({required String messager}) {
    return PopularCookingStateError(
      messager: messager,
    );
  }
}

/// @nodoc
const $PopularCookingState = _$PopularCookingStateTearOff();

/// @nodoc
mixin _$PopularCookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PopularResponse? popularResponse) success,
    required TResult Function(String messager) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularCookingStateInitial value) initial,
    required TResult Function(PopularCookingStateSuccess value) success,
    required TResult Function(PopularCookingStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCookingStateCopyWith<$Res> {
  factory $PopularCookingStateCopyWith(
          PopularCookingState value, $Res Function(PopularCookingState) then) =
      _$PopularCookingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularCookingStateCopyWithImpl<$Res>
    implements $PopularCookingStateCopyWith<$Res> {
  _$PopularCookingStateCopyWithImpl(this._value, this._then);

  final PopularCookingState _value;
  // ignore: unused_field
  final $Res Function(PopularCookingState) _then;
}

/// @nodoc
abstract class $PopularCookingStateInitialCopyWith<$Res> {
  factory $PopularCookingStateInitialCopyWith(PopularCookingStateInitial value,
          $Res Function(PopularCookingStateInitial) then) =
      _$PopularCookingStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularCookingStateInitialCopyWithImpl<$Res>
    extends _$PopularCookingStateCopyWithImpl<$Res>
    implements $PopularCookingStateInitialCopyWith<$Res> {
  _$PopularCookingStateInitialCopyWithImpl(PopularCookingStateInitial _value,
      $Res Function(PopularCookingStateInitial) _then)
      : super(_value, (v) => _then(v as PopularCookingStateInitial));

  @override
  PopularCookingStateInitial get _value =>
      super._value as PopularCookingStateInitial;
}

/// @nodoc

class _$PopularCookingStateInitial implements PopularCookingStateInitial {
  const _$PopularCookingStateInitial();

  @override
  String toString() {
    return 'PopularCookingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PopularCookingStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PopularResponse? popularResponse) success,
    required TResult Function(String messager) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularCookingStateInitial value) initial,
    required TResult Function(PopularCookingStateSuccess value) success,
    required TResult Function(PopularCookingStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PopularCookingStateInitial implements PopularCookingState {
  const factory PopularCookingStateInitial() = _$PopularCookingStateInitial;
}

/// @nodoc
abstract class $PopularCookingStateSuccessCopyWith<$Res> {
  factory $PopularCookingStateSuccessCopyWith(PopularCookingStateSuccess value,
          $Res Function(PopularCookingStateSuccess) then) =
      _$PopularCookingStateSuccessCopyWithImpl<$Res>;
  $Res call({PopularResponse? popularResponse});
}

/// @nodoc
class _$PopularCookingStateSuccessCopyWithImpl<$Res>
    extends _$PopularCookingStateCopyWithImpl<$Res>
    implements $PopularCookingStateSuccessCopyWith<$Res> {
  _$PopularCookingStateSuccessCopyWithImpl(PopularCookingStateSuccess _value,
      $Res Function(PopularCookingStateSuccess) _then)
      : super(_value, (v) => _then(v as PopularCookingStateSuccess));

  @override
  PopularCookingStateSuccess get _value =>
      super._value as PopularCookingStateSuccess;

  @override
  $Res call({
    Object? popularResponse = freezed,
  }) {
    return _then(PopularCookingStateSuccess(
      popularResponse: popularResponse == freezed
          ? _value.popularResponse
          : popularResponse // ignore: cast_nullable_to_non_nullable
              as PopularResponse?,
    ));
  }
}

/// @nodoc

class _$PopularCookingStateSuccess implements PopularCookingStateSuccess {
  const _$PopularCookingStateSuccess({this.popularResponse});

  @override
  final PopularResponse? popularResponse;

  @override
  String toString() {
    return 'PopularCookingState.success(popularResponse: $popularResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PopularCookingStateSuccess &&
            const DeepCollectionEquality()
                .equals(other.popularResponse, popularResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(popularResponse));

  @JsonKey(ignore: true)
  @override
  $PopularCookingStateSuccessCopyWith<PopularCookingStateSuccess>
      get copyWith =>
          _$PopularCookingStateSuccessCopyWithImpl<PopularCookingStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PopularResponse? popularResponse) success,
    required TResult Function(String messager) error,
  }) {
    return success(popularResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
  }) {
    return success?.call(popularResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(popularResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularCookingStateInitial value) initial,
    required TResult Function(PopularCookingStateSuccess value) success,
    required TResult Function(PopularCookingStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PopularCookingStateSuccess implements PopularCookingState {
  const factory PopularCookingStateSuccess({PopularResponse? popularResponse}) =
      _$PopularCookingStateSuccess;

  PopularResponse? get popularResponse;
  @JsonKey(ignore: true)
  $PopularCookingStateSuccessCopyWith<PopularCookingStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCookingStateErrorCopyWith<$Res> {
  factory $PopularCookingStateErrorCopyWith(PopularCookingStateError value,
          $Res Function(PopularCookingStateError) then) =
      _$PopularCookingStateErrorCopyWithImpl<$Res>;
  $Res call({String messager});
}

/// @nodoc
class _$PopularCookingStateErrorCopyWithImpl<$Res>
    extends _$PopularCookingStateCopyWithImpl<$Res>
    implements $PopularCookingStateErrorCopyWith<$Res> {
  _$PopularCookingStateErrorCopyWithImpl(PopularCookingStateError _value,
      $Res Function(PopularCookingStateError) _then)
      : super(_value, (v) => _then(v as PopularCookingStateError));

  @override
  PopularCookingStateError get _value =>
      super._value as PopularCookingStateError;

  @override
  $Res call({
    Object? messager = freezed,
  }) {
    return _then(PopularCookingStateError(
      messager: messager == freezed
          ? _value.messager
          : messager // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PopularCookingStateError implements PopularCookingStateError {
  const _$PopularCookingStateError({required this.messager});

  @override
  final String messager;

  @override
  String toString() {
    return 'PopularCookingState.error(messager: $messager)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PopularCookingStateError &&
            const DeepCollectionEquality().equals(other.messager, messager));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messager));

  @JsonKey(ignore: true)
  @override
  $PopularCookingStateErrorCopyWith<PopularCookingStateError> get copyWith =>
      _$PopularCookingStateErrorCopyWithImpl<PopularCookingStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PopularResponse? popularResponse) success,
    required TResult Function(String messager) error,
  }) {
    return error(messager);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
  }) {
    return error?.call(messager);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PopularResponse? popularResponse)? success,
    TResult Function(String messager)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messager);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularCookingStateInitial value) initial,
    required TResult Function(PopularCookingStateSuccess value) success,
    required TResult Function(PopularCookingStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularCookingStateInitial value)? initial,
    TResult Function(PopularCookingStateSuccess value)? success,
    TResult Function(PopularCookingStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PopularCookingStateError implements PopularCookingState {
  const factory PopularCookingStateError({required String messager}) =
      _$PopularCookingStateError;

  String get messager;
  @JsonKey(ignore: true)
  $PopularCookingStateErrorCopyWith<PopularCookingStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
