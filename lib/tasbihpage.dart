import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(BertasbihApp());
}

class BertasbihApp extends StatefulWidget {
  @override
  _BertasbihAppState createState() => _BertasbihAppState();
}

class _BertasbihAppState extends State<BertasbihApp> {
  int _count = 0;
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _loadSavedCount();
  }

  Future<void> _loadSavedCount() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _count = _prefs.getInt('count') ?? 0;
    });
  }

  void _incrementCount() {
    setState(() {
      _count++;
      _prefs.setInt('count', _count);
    });
  }

  void _resetCount() {
    setState(() {
      _count = 0;
      _prefs.setInt('count', _count);
    });

    Navigator.pop(context); // Kembali ke halaman sebelumnya setelah reset
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bertasbih App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tasbih Count:',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '$_count',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCount,
                child: Text('Bertasbih'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _resetCount,
                child: Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
