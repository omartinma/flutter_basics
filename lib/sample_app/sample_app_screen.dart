import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ie_workshop/sample_app/bloc/sample_bloc.dart';

class MyItem {
  MyItem({
    required this.name,
    required this.description,
    required this.url,
  });

  final String name;
  final String description;
  final String url;
}

class SampleAppScreen extends StatelessWidget {
  const SampleAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
      ),
      body: BlocBuilder<SampleBloc, SampleState>(
        builder: (context, state) {
          if (state is SampleSucces) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final item = state.items[index];
                return ListTile(
                  title: Text(item.name, style: const TextStyle(fontSize: 30)),
                  subtitle: Text(
                    item.description,
                    style: const TextStyle(fontSize: 24),
                  ),
                  leading: Image.network(item.url),
                  trailing: const Icon(Icons.account_tree_sharp),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) {
                          return DetailsScreen(item: item);
                        },
                      ),
                    );
                  },
                );
              },
              itemCount: state.items.length,
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.item, super.key});

  final MyItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Text(item.description, style: const TextStyle(fontSize: 30)),
    );
  }
}
