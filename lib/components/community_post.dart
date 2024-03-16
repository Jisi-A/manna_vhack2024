import 'package:flutter/material.dart';

class CommunityPost extends StatelessWidget {
  String photo = 'assets/avatar.png';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        title: Text('Community Post'),
        subtitle: Text('This is a sample community post.'),
      ),
    );
  }
}
