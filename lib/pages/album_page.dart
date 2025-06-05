import 'package:flutter/material.dart';

class AlbumPage extends StatelessWidget {
  final String album;
  final String artist;
  final String coverUrl;

  const AlbumPage({
    super.key,
    required this.album,
    required this.artist,
    required this.coverUrl,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> tracks = [
      '01. Intro',
      '02. Blinding Lights',
      '03. Save Your Tears',
      '04. In Your Eyes',
      '05. After Hours',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(album),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Fundo com imagem do álbum
          Positioned.fill(
            child: Image.network(
              coverUrl,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.4),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          // Conteúdo
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: kToolbarHeight + 40,
              bottom: 30,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(coverUrl),
                  radius: 70,
                ),
                const SizedBox(height: 20),
                Text(
                  album,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'por $artist',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Faixas",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ...tracks.map(
                  (track) => ListTile(
                    leading: const Icon(
                      Icons.music_note,
                      color: Colors.purpleAccent,
                    ),
                    title: Text(track),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Função de avaliação em breve..."),
                      ),
                    );
                  },
                  icon: const Icon(Icons.star),
                  label: const Text("Avaliar Álbum"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent.shade100,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
