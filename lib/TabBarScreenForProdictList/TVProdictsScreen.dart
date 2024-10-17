import 'package:flutter/material.dart';

class TVProductsScreen extends StatefulWidget {
  @override
  _TVProductsScreenState createState() => _TVProductsScreenState();
}

class _TVProductsScreenState extends State<TVProductsScreen> {
  List<bool> isFavoriteList = [];

  final List<Map<String, dynamic>> tvProducts = [
    {
      'name': 'Samsung 65" QLED TV',
      'price': '\$1200',
      'image': 'assets/image/HR1J2 (1).png', // Local image
    },
    {
      'name': 'LG 55" OLED TV',
      'price': '\$1500',
      'image': 'assets/image/jgMosu41Gfx32OjVZXFgq2Ar8SHc81v7z5YwUkql (1).webp', // Local image
    },
    {
      'name': 'Sony Bravia 75" LED TV',
      'price': '\$1800',
      'image': 'assets/image/sony-bravia-led.jpg', // Local image
    },
    {
      'name': 'Panasonic 50" 4K TV',
      'price': '\$900',
      'image': 'assets/image/watch-card-40-hermes-202403.jpeg', // Local image
    },
    {
      'name': 'Panasonic 50" 4K TV',
      'price': '\$200',
      'image': 'assets/image/WMNS+JORDAN+DEJA+SANDAL.png', // Local image
    },
  ];

  @override
  void initState() {
    super.initState();
    isFavoriteList = List.generate(tvProducts.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('TV Products'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: GridView.builder(
            itemCount: tvProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 columns per row for a wider layout
              crossAxisSpacing: 6,
              mainAxisSpacing: 1,
              childAspectRatio: 0.68, // Adjusted aspect ratio
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    // Image container
                    Container(
                      height: screenWidth * 0.29, // Responsive height based on screen size
                      width: 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      child: Image.asset(
                        tvProducts[index]['image'], // Using local assets
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Product info
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tvProducts[index]['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Text(
                            tvProducts[index]['price'],
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          // Add to Cart button
                          ElevatedButton.icon(
                            onPressed: () {
                              // Add to cart functionality
                            },
                            icon: Icon(Icons.shopping_cart, size: 18),
                            label: Text("Add to Cart"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
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
      ),
    );
  }
}
