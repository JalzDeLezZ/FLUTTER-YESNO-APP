import 'package:flutter/material.dart';

class HerMessageBubbleScreen extends StatelessWidget {
  const HerMessageBubbleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hello world',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          'https://yesno.wtf/assets/screenrecording-a3c84026f1d0d1a104d67d2a7aabcea8.gif',
          width: size.width * 0.6,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            // return const Center(child: CircularProgressIndicator());
            return Container(
              width: size.width * 0.6,
              height: 150,
              padding: const EdgeInsets.all(20),
              child: const Text('Loading...'),
            );
          },
        ));
  }
}
