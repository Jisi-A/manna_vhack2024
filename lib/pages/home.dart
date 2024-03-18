import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: 'Home',
        isIcon: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home page',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/soil');
              },
              child: Text('Go to Soil Page'),
            ),
          ],
        ),
      ),
    );
  }
}
