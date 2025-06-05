import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> posts = [
      {
        'user': 'joaofm',
        'album': 'After Hours',
        'artist': 'The Weeknd',
        'rating': 4.5,
        'comment': 'Obra-prima moderna. “Blinding Lights” é viciante!',
        'coverUrl':
            'https://upload.wikimedia.org/wikipedia/en/5/5c/The_Weeknd_-_After_Hours.png',
      },
      {
        'user': 'mikael',
        'album': 'Renaissance',
        'artist': 'Beyoncé',
        'rating': 5.0,
        'comment': 'Ela fez tudo e entregou tudo. Perfeição sonora!',
        'coverUrl':
            'https://upload.wikimedia.org/wikipedia/en/5/5b/Beyonc%C3%A9_-_Renaissance.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Musiconic'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: const Color(0xFF2C2C3A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      post['coverUrl'],
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '@${post['user']}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          post['album'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          post['artist'],
                          style: const TextStyle(fontSize: 14),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.purpleAccent.shade100,
                              size: 18,
                            ),
                            Text(
                              '${post['rating']}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(post['comment']),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
