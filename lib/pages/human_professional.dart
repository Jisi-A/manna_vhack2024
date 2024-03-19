import 'package:flutter/material.dart';

class HumanProfessional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search for professionals',
                    labelStyle: TextStyle(fontSize: 12),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        // Handle the send button press
                      },
                    ), // Decreased the font size to 12
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            'Human Professional Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
