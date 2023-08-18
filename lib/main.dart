import 'package:flutter/material.dart';
import 'package:prakerja_marmandinosoleh/compasspage.dart';
import 'kisah_nabi_page.dart'; // Pastikan impor halaman Kisah Nabi yang telah Anda buat

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Islam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  final List<Map<String, dynamic>> menus = [
    {
      'title': 'Doa Harian dengan Ilmu Agama',
      'imageURL':
          'https://www.reviewofreligions.org/wp-content/uploads/2019/09/shutterstock_662670454.jpg',
    },
    {
      'title': 'Compas Kiblatt',
      'imageURL':
          'https://www.islampos.com/wp-content/uploads/2020/11/shalat-dhuha.jpg',
    },
    {
      'title': 'Tasbih Digital',
      'imageURL':
          'https://assets-a1.kompasiana.com/items/album/2019/10/01/screenshot-2019-10-01-19-31-43-068-com-android-chrome-5d935275097f361b995c2d12.png',
    },
    {
      'title': 'Kisah 25 Nabi',
      'imageURL':
          'https://img.inews.co.id/media/600/files/inews_new/2020/03/07/kisah_nabi.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Islam'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: menus.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              _navigateToSelectedMenu(context, index);
            },
            splashColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(menus[index]['imageURL']),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(menus[index]['title']),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _navigateToSelectedMenu(BuildContext context, int index) {
    switch (index) {
      case 0:
        // Navigasi ke halaman Doa Harian
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CompassPage()),
        );
        break;
      case 2:
        // Navigasi ke halaman Tasbih Digital
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KisahNabiPage()),
        );
        break;
    }
  }
}
