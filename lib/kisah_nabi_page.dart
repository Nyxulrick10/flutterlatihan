import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(KisahNabiApp());
}

class KisahNabiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KisahNabiPage(),
    );
  }
}

class KisahNabiPage extends StatelessWidget {
  final List<String> daftarNabi = [
    'Nabi Adam',
    'Nabi Idris',
    'Nabi Nuh',
    'Nabi Hud',
    'Nabi Saleh',
    'Nabi Ibrahim',
    'Nabi Luth',
    'Nabi Ismail',
    'Nabi Ishaq',
    'Nabi Ya\'qub',
    'Nabi Yusuf',
    'Nabi Ayyub',
    'Nabi Dhulkifl',
    'Nabi Syu\'aib',
    'Nabi Musa',
    'Nabi Harun',
    'Nabi Daud',
    'Nabi Sulaiman',
    'Nabi Ilyas',
    'Nabi ilyasa\'',
    'Nabi Yunus',
    'Nabi Zakariya',
    'Nabi Yahya',
    'Nabi Isa',
    'Nabi Muhammad'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kisah 25 Nabi'),
      ),
      body: ListView.builder(
        itemCount: daftarNabi.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(daftarNabi[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailNabiPage(namaNabi: daftarNabi[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailNabiPage extends StatelessWidget {
  final String namaNabi;

  DetailNabiPage({required this.namaNabi});

  Future<String> loadStory() async {
    String storyText = await rootBundle.loadString(
        'assets/stories/${namaNabi.toLowerCase().replaceAll(' ', '_')}.txt');
    return storyText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaNabi),
      ),
      body: FutureBuilder<String>(
        future: loadStory(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error loading story.'));
          }
          if (snapshot.hasData) {
            return SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Text(snapshot.data!),
            );
          }
          return Center(child: Text('No story available.'));
        },
      ),
    );
  }
}
