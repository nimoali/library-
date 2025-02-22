import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = [
    {'title': 'Tasty Burger', 'image': 'assets/buger.jpg', 'price': '\$5 - \$20'},
    {'title': 'Tasty Cakes', 'image': 'assets/cakes.jpg', 'price': '\$5 - \$20'},
    {'title': 'Tasty Sweets', 'image': 'assets/tasty sweets.jpg', 'price': '\$5 - \$20'},
    {'title': 'Tasty Cupcakes', 'image': 'assets/buger.jpg', 'price': '\$5 - \$20'},
    {'title': 'Cold Drinks', 'image': 'assets/cakes.jpg', 'price': '\$5 - \$20'},
    {'title': 'Tasty Ice-Creams', 'image': 'assets/buger.jpg', 'price': '\$5 - \$20'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Most Popular Foods')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      foodItems[index]['image'],
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          foodItems[index]['title'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          foodItems[index]['price'],
                          style: TextStyle(fontSize: 14, color: Colors.red),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (i) => Icon(Icons.star, color: Colors.amber, size: 16)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Order Now'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
