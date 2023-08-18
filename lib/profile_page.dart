import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.grey[100],
            child: const Row(
              children: [
                Icon(Icons.search),
                Text('Pencarian'),
              ],
            ),
          ),
          const Divider(height: 0),
          Expanded(
            child: ListView(
              children: [
                ListView(
                padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: const [
                    Text("Halooo"),
                    Text("Alohaloo"),
                    Text("Looo"),
                    Text("O"),
                    Text("O"),
                    Text("Halooo"),
                    Text("Alohaloo"),
                    Text("Looo"),
                    Text("O"),
                  ],
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  crossAxisCount: 5,
                  padding: const EdgeInsets.all(16),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.home)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.settings)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.person)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.print)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.settings, color: Colors.white,)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.person)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.home)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.settings)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.person)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.home)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.settings)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.person)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.print)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.settings, color: Colors.white,)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.person)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.home)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.settings)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.person)
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 170,
                        height: 100,
                        color: Colors.purple,
                      ),
                      Container(
                        width: 150,
                        height: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        width: 150,
                        height: 100,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
                ListView(
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    Container(
                      width: double.infinity,
                      height: 160,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: double.infinity,
                      height: 180,
                      color: Colors.red,
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}