import 'package:flutter/material.dart';


class GalleryPage extends StatelessWidget {
  final List<String> foodImages = [
    'assets/buger.jpg',
    'assets/tasty sweets.jpg',
    'assets/cakes.jpg',
    'assets/cakes.jpg',
    'assets/buger.jpg',
    'assets/tasty sweets.jpg',
    'assets/cakes.jpg',
    'assets/buger.jpg',
    'assets/tasty sweets.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Our Food Gallery')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.5,
          ),
          itemCount: foodImages.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                foodImages[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
