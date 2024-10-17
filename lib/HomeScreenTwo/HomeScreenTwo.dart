import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TechItem {
  final String name;
  final String imageUrl;
  final double price;
  bool isFavorite;

  TechItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false,
  });
}

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  _HomeScreenTwoState createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  List<TechItem> techItems = [
    TechItem(name: 'Laptop 1', imageUrl: 'https://via.placeholder.com/150', price: 1200.00),
    TechItem(name: 'Laptop 2', imageUrl: 'https://via.placeholder.com/150', price: 1400.00),
    TechItem(name: 'Laptop 3', imageUrl: 'https://via.placeholder.com/150', price: 1600.00),
    TechItem(name: 'Computer 1', imageUrl: 'https://via.placeholder.com/150', price: 1800.00),
    TechItem(name: 'Computer 2', imageUrl: 'https://via.placeholder.com/150', price: 2000.00),
    TechItem(name: 'Laptop 4', imageUrl: 'https://via.placeholder.com/150', price: 1500.00),
    TechItem(name: 'Tablet 1', imageUrl: 'https://via.placeholder.com/150', price: 800.00),
    TechItem(name: 'Smartphone 1', imageUrl: 'https://via.placeholder.com/150', price: 900.00),
    TechItem(name: 'Smartwatch 1', imageUrl: 'https://via.placeholder.com/150', price: 300.00),
    TechItem(name: 'Headphones 1', imageUrl: 'https://via.placeholder.com/150', price: 250.00),
    // আরো items যোগ করতে পারো...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce Store'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // দুইটি কলামে আইটেম দেখাবে
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7, // কার্ডের আকার নিয়ন্ত্রণ
        ),
        itemCount: techItems.length,
        itemBuilder: (context, index) {
          final item = techItems[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                        image: DecorationImage(
                          image: NetworkImage(item.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          item.isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: item.isFavorite ? Colors.red : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            item.isFavorite = !item.isFavorite;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '\$${item.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.green,
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
    );
  }
}