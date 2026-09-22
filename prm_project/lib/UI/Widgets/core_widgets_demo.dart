import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 1 – Core Widgets'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to FPT',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),


            const Center(
              child: Icon(
                Icons.school,
                size: 80,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0), // 👈 Điều chỉnh khoảng cách lề ở đây
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://scontent.fhan5-9.fna.fbcdn.net/v/t39.99422-6/803226535_1727330951712192_1021485663465592309_n.png?stp=dst-jpg_tt6&cstp=mx2048x2048&ctp=s2048x2048&_nc_cat=101&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=127cfc&_nc_ohc=25P2BNAPRNgQ7kNvwFPv9to&_nc_oc=AdpWvGC2Tchh8CYYVttothJAqKBurnNBR_bPRoZEy_F2q2_j5coouJwX7ueJXct_J-BLAql2X0NYy4EROjU1vpBv&_nc_zt=14&_nc_ht=scontent.fhan5-9.fna&_nc_gid=IJU7zh14LeZ6bIK8pXDtWg&_nc_ss=782a8&oh=00_AQK7lNI5GSNfMfwiMDbs7_0iqVHlxQbCYCexIO3YM6lNZg&oe=6AB87E8C',
                  height: 600,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(height: 20),


            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: Icon(Icons.star, color: Colors.amber),
                title: Text(
                  'Tượng',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tượng trước tòa nhà Delta gần hồ thiên nga.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}