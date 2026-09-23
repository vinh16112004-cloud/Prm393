import 'package:flutter/material.dart';
import 'package:prm_project/UI/Widgets/input_controls_demo.dart';
import 'package:prm_project/UI/Widgets/core_widgets_demo.dart';
import 'package:prm_project/UI/Widgets/layout_demo.dart';
import 'package:prm_project/UI/Widgets/app_structure_demo.dart';
import 'package:prm_project/UI/Widgets/common_fixes_demo.dart';


class Lab4Screen extends StatelessWidget {
  const Lab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 4 – Flutter UI Fundamentals'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildItem(context, 'Exercise 1 – Core Widgets Demo', const CoreWidgetsDemo()),
          _buildItem(context, 'Exercise 2 – Input Controls Demo', const InputControlsDemo()),
          _buildItem(context, 'Exercise 3 – Layout Demo', const LayoutDemo()),
          _buildItem(context, 'Exercise 4 – App Structure & Theme', const AppStructureDemo()),
          _buildItem(context, 'Exercise 5 – Common UI Fixes', const CommonFixesDemo()),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, String title, Widget destination) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}