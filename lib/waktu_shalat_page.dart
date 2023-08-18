import 'package:flutter/material.dart';
import 'package:smooth_compass/utils/src/compass_ui.dart';

void main() {
  runApp(MyApp());
}

class WaktuShalatPage extends StatefulWidget {
  @override
  _WaktuShalatPageState createState() => _WaktuShalatPageState();
}

class _WaktuShalatPageState extends State<WaktuShalatPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Waktu Shalat'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothCompass(
                height: 200,
                width: 200,
                isQiblahCompass: true,
                compassBuilder: (context, snapshot, child) {
                  return AnimatedRotation(
                    duration: const Duration(milliseconds: 800),
                    turns: snapshot?.data?.turns ?? 0,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.asset(
                            "assets/images/compass.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: AnimatedRotation(
                            duration: const Duration(milliseconds: 500),
                            turns: (snapshot?.data?.qiblahOffset ?? 0) / 360,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const VerticalDivider(
                                color: Colors.grey,
                                thickness: 5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Anda dapat menambahkan logika untuk mengarahkan ke halaman waktu shalat yang sesungguhnya
                  // Di sini hanya contoh tombol yang mengarahkan ke halaman sebelumnya
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Kembali',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaktuShalatPage(),
    );
  }
}
