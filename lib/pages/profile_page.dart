import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> userReviews = [
      {
        'album': 'Future Nostalgia',
        'artist': 'Dua Lipa',
        'rating': 4.0,
        'comment': 'Dancei até cair. Muito bem produzido!',
        'coverUrl':
            'https://upload.wikimedia.org/wikipedia/en/3/3e/Dua_Lipa_-_Future_Nostalgia_%28Official_Album_Cover%29.png',
      },
      {
        'album': 'Norman F***ing Rockwell!',
        'artist': 'Lana Del Rey',
        'rating': 5.0,
        'comment': 'Poesia pura. Uma obra de arte moderna.',
        'coverUrl':
            'https://upload.wikimedia.org/wikipedia/en/9/9f/Lana_Del_Rey_-_Norman_Fucking_Rockwell.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Perfil"), centerTitle: true),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=5', // Avatar fake pra ilustrar
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "@mikaelson",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Crítico musical em ascensão",
            style: TextStyle(color: Colors.grey),
          ),
          const Divider(height: 30, thickness: 1),
          const Text(
            "Avaliações Recentes",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: userReviews.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                final review = userReviews[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  color: const Color(0xFF2C2C3A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        review['coverUrl'],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(review['album']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(review['artist']),
                        Text("⭐ ${review['rating']}"),
                        Text(review['comment']),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
