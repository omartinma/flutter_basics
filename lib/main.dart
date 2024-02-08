import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ie_workshop/sample_app/bloc/sample_bloc.dart';
import 'package:ie_workshop/sample_app/sample_app_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => SampleBloc()..add(const FetchData()),
        child: const SampleAppScreen(),
      ),
    );
  }
}
