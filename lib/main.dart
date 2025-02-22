import 'package:flutter/material.dart';
import 'package:my_app/screens/Gallery.dart';
import 'package:my_app/screens/Popular.dart';
import 'package:my_app/screens/Speciality.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context) => MainHomePage(),
        '/speciality': (context) => SpecialityPage(),
        '/popular': (context) => PopularPage(), // Changed to lowercase 'popular'
        '/gallery': (context) => GalleryPage(), // Changed to lowercase 'popular'
      },
    );
  }
}

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.restaurant_menu, color: Colors.red),
            SizedBox(width: 8),
            Text('Food', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          _navItem(context, 'Home', '/'),
          _navItem(context, 'Speciality', '/speciality'),
          _navItem(context, 'Popular', '/popular'), // Changed to lowercase 'popular'
          _navItem(context, 'Gallery', '/gallery'),
          SizedBox(width: 16),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Text(
                    'Food Made With Love',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  if (!isMobile)
                    Image.asset('assets/burger.png', height: 400),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _navItem(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, route),
        child: Text(title, style: TextStyle(color: Colors.black)),
      ),
    );
  }
}