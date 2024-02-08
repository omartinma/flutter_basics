part of 'sample_bloc.dart';

class SampleEvent extends Equatable {
  const SampleEvent();
  @override
  List<Object> get props => [];
}

class FetchData extends SampleEvent {
  const FetchData();
}
