import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';
import 'package:manna_vhack2024/components/botNavBar.dart';
import 'package:manna_vhack2024/pages/account.dart';
import 'package:manna_vhack2024/pages/home.dart';
import 'package:manna_vhack2024/pages/community.dart';
import 'package:manna_vhack2024/pages/ai_assistant.dart';
import 'package:manna_vhack2024/pages/marketplace.dart';

//first default page is home page
void main() => runApp(MaterialApp(initialRoute: '/home', routes: {
      '/home': (context) => botNavBar(),
      '/community': (context) => community(),
      '/ai_assistant': (context) => ai_assistant(),
      '/marketplace': (context) => marketplace(),
      '/account': (context) => account(),
    }));
