import 'package:flutter/material.dart';

class AppStructureDemo extends StatefulWidget {
  const AppStructureDemo({super.key});

  @override
  State createState() => _AppStructureDemoState();
}

class _AppStructureDemoState extends State {
  // Biến quản lý trạng thái Dark Mode
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    // Áp dụng Theme tương ứng dựa vào trạng thái _isDarkMode
    return Theme(
      data: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 4 – App Structure & Theme'),
          actions: [
            Row(
              children: [
                const Text('Dark'),
                Switch(
                  value: _isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        body: const Center(
          child: Text(
            'This is a simple screen with theme toggle.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('FloatingActionButton Clicked!')),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}