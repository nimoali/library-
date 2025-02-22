import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Food Speciality',
//       theme: ThemeData(primarySwatch: Colors.red),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   final List<Map<String, dynamic>> foodItems = [
//     {'title': 'Tasty Burger', 'icon': Icons.fastfood},
//     {'title': 'Tasty Pizza', 'icon': Icons.local_pizza},
//     {'title': 'Cold Ice-Cream', 'icon': Icons.icecream},
//     {'title': 'Cold Drinks', 'icon': Icons.local_drink},
//     {'title': 'Tasty Sweets', 'icon': Icons.cake},
//     {'title': 'Tasty Breakfast', 'icon': Icons.coffee},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Our Speciality')),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemCount: foodItems.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DetailPage(title: foodItems[index]['title']),
//                   ),
//                 );
//               },
//               child: Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(foodItems[index]['icon'], size: 50, color: Colors.red),
//                     SizedBox(height: 10),
//                     Text(
//                       foodItems[index]['title'],
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class DetailPage extends StatelessWidget {
//   final String title;
//   DetailPage({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Center(
//         child: Text(
//           'Details about $title',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// Speciality Page with Grid View
class SpecialityPage extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = [
    {'title': 'Tasty Burger', 'icon': Icons.fastfood},
    {'title': 'Tasty Pizza', 'icon': Icons.local_pizza},
    {'title': 'Cold Ice-Cream', 'icon': Icons.icecream},
    {'title': 'Cold Drinks', 'icon': Icons.local_drink},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Our Specialities')),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: foodItems.length,
        itemBuilder: (context, index) => FoodItemCard(item: foodItems[index]),
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final Map<String, dynamic> item;
  const FoodItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(title: item['title']),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item['icon'], size: 50, color: Colors.red),
            SizedBox(height: 10),
            Text(item['title'], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  const DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Details for: $title', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Lorem ipsum dolor sit amet...', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}