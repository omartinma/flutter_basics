part of 'sample_bloc.dart';

@immutable
sealed class SampleState {}

final class SampleInitial extends SampleState {}

final class SampleLoading extends SampleState {}

final class SampleError extends SampleState {}

final class SampleSucces extends SampleState {
  SampleSucces({required this.items});

  final List<Character> items;
}
