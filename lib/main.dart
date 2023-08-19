import 'package:flutter/material.dart';
import 'package:prakerja_marmandinosoleh/doadoapage.dart';
import 'package:prakerja_marmandinosoleh/tasbihpage.dart';

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
          'https://4.bp.blogspot.com/-ozGzoPwL0R0/XuIBqJAKFcI/AAAAAAAAWLg/Olt-k3QuquM88SrIx0q1me1IiXMG-_LOgCEwYBhgLKs4DAL1Ocqxs3TYH2NJw-l6uZNUcUdiRZrChirG1fem-poQeJAbBaow0ub8Q-dyACheUj7zhqP2VGeFrP2rHVXgI1TZ1xik3uBJRScRsFfx_yDPqYjSCBEwKZoUdsHmWufclac1-5ihton6d8cGAjibh9Dky4uDcX6Gc4JLhXynv9T5CqwHVCBA_PLv76YC_NEzjXccpPJIVzA_9TY9j88Vlu6-YbZTF1VoiqgX1kLn6boQ0_UcTAJctyki39X8UYYmqNc7I_Y6DQgKAENpsBNXYpy_o-aNpOWAsVrIO8KiuiuudZhwDZwdq0K1ACwvKRU7hogWiv5dLQbz1KLXvhCKcARsNyM5gUrWxPyk1mV2imKDhhSkISxJaKeS6YAaXLSdM3B5wY6qWQme8soPD_I13qT8B1kybtbK6WnQzsK3FaolYo2s-U2QjABd1rmNjf1nL-QvoH1wM8efNKSYD7gwpa0Ce2-jH1m4pUyeyLgHEBBO4TN96kunorALNvFYbhvoMniaeWES_XGQfINGL1fRQc8cjNzw80mK0rPAzrwW9sNWuMVsCsjPtmM_BwciASr_ujoUprJGhS_qVoXnLugBLxeEkXmUfWR4nGKReTlyQMJKJiPcF/s1600/20200611_170706_0000.png',
    },
    {
      'title': 'Tasbih Digital',
      'imageURL':
          'https://akcdn.detik.net.id/community/media/visual/2019/10/06/30dda9f1-62e6-4469-b107-a6e413504383_43.jpeg?w=700&q=90',
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
       Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DoaDoaApp()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BertasbihApp()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KisahNabiPage()),
        );
        break;
    }
  }
}
