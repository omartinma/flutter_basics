import 'package:flutter/material.dart';
import 'package:flutter_basics/sample_app/sample_app.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({required this.characters, super.key});

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => CharacterItemView(
        character: characters[index],
      ),
      itemCount: characters.length,
    );
  }
}

class CharacterItemView extends StatelessWidget {
  @visibleForTesting
  const CharacterItemView({
    required this.character,
    super.key,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.network(character.image),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white70,
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Text(
                  character.name,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
