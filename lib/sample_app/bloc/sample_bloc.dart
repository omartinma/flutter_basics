import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_basics/sample_app/sample_app_screen.dart';
import 'package:meta/meta.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  SampleBloc() : super(SampleInitial()) {
    on<FetchData>(_fetchData);
  }

  FutureOr<void> _fetchData(FetchData event, Emitter<SampleState> emit) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final list = <MyItem>[];
    for (var i = 0; i < 5; i++) {
      list.add(
        MyItem(
          name: 'Name $i',
          description: 'Description $i',
          url: 'https://picsum.photos/id/$i/200',
        ),
      );
    }
    emit(SampleSucces(items: list));
  }
}
