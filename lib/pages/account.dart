import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: 'Account',
        isIcon: true,
      ),
      body: Center(
        child: Text(
          'account page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
