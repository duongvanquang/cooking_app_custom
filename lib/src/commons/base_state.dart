import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class BaseState extends Equatable {}

class LoadedState<TData> extends BaseState {
  final TData? data;

  LoadedState({this.data});

  @override
  List<Object?> get props => [data];
}

class InitialState extends BaseState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends BaseState {
  final String? message;
  final String? icon;

  ErrorState({this.message, this.icon});

  @override
  List<Object?> get props => [message, icon];
}

class NoDataState extends BaseState {
  final String? message;

  NoDataState({this.message});

  @override
  List<Object?> get props => [message];
}
