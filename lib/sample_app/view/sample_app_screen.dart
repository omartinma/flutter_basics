import 'package:flutter/material.dart';
import 'package:flutter_basics/sample_app/bloc/sample_bloc.dart';
import 'package:flutter_basics/sample_app/view/character_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SampleAppScreen extends StatelessWidget {
  const SampleAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SampleBloc()..add(const FetchData()),
      child: const SampleAppScreenView(),
    );
  }
}

class SampleAppScreenView extends StatelessWidget {
  const SampleAppScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
      ),
      body: BlocBuilder<SampleBloc, SampleState>(
        builder: (context, state) {
          if (state is SampleSucces) {
            return CharacterList(characters: state.items);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
