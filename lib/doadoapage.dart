import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(DoaDoaApp());
}

class DoaDoaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoaListPage(),
    );
  }
}

class DoaListPage extends StatelessWidget {
  final List<String> daftarDoa = [
    'Rukun Islam',
    'Rukun Iman',
    'Sifat Rasul',
    'Akhlak Mulia atau Terpuji',
    'Akhlak Buruk atau Tercela',
    'Surat-Surat Pendek',
    'Tadarus Al Quran',
    'Peringatan Hari Besar Agama Islam',
    'Sifat-sifat Allah',
    'Tatacara Berwudhu',
    'Doa Sebelum Tidur',
    'Doa Bangun Tidur',
    'Doa Untuk Kedua Orang Tua',
    'Doa Sebelum Makan',
    'Doa Setelah Makan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kumpulan Doa-Doa'),
      ),
      body: ListView.builder(
        itemCount: daftarDoa.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(daftarDoa[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailDoaPage(judulDoa: daftarDoa[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailDoaPage extends StatelessWidget {
  final String judulDoa;

  DetailDoaPage({required this.judulDoa});

  Future<String> loadDoa() async {
    String doaText = await rootBundle.loadString(
        'assets/doas/${judulDoa.toLowerCase().replaceAll(' ', '_')}.txt');
    return doaText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judulDoa),
      ),
      body: FutureBuilder<String>(
        future: loadDoa(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error loading doa.'));
          }
          if (snapshot.hasData) {
            return SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Text(snapshot.data!),
            );
          }
          return Center(child: Text('No doa available.'));
        },
      ),
    );
  }
}
