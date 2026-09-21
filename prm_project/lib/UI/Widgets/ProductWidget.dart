import 'package:flutter/material.dart';

class Productwidget extends StatelessWidget {
  const Productwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // Sắp xếp giao diện theo chiều dọc
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              "https://afamilycdn.com/2019/3/21/1-1553153503410300326239.jpg",
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 8),

          Expanded(
            flex: 1,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Name: Nong Hoang Duc"),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Text("Price: "),
                        Text(
                          'Old: 30\$',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Sale: 20\$',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}