import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_basics/sample_app/sample_app.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  SampleBloc() : super(SampleInitial()) {
    on<FetchData>(_fetchData);
  }

  FutureOr<void> _fetchData(FetchData event, Emitter<SampleState> emit) async {
    final httpClient = Client();
    const baseUrl = 'rickandmortyapi.com';
    const endpoint = 'api/character';
    final url = Uri.https(baseUrl, endpoint);
    final response = await httpClient.get(url);

    if (response.statusCode != 200) {}
    emit(SampleError());
    try {
      final charactersJson = jsonDecode(response.body) as Map<String, dynamic>;
      final characters = (charactersJson['results'] as List)
          .map(
            (dynamic e) => Character.fromJson(e as Map<String, dynamic>),
          )
          .toList();
      emit(SampleSucces(items: characters));
    } catch (e) {
      emit(SampleError());
    }
  }
}
