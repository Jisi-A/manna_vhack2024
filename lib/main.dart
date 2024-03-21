import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/botNavBar.dart';
import 'package:manna_vhack2024/pages/account.dart';
import 'package:manna_vhack2024/pages/login.dart';
import 'package:manna_vhack2024/pages/news.dart';
import 'package:manna_vhack2024/pages/signUp.dart';
import 'package:manna_vhack2024/pages/community.dart';
import 'package:manna_vhack2024/pages/ai_assistant.dart';
import 'package:manna_vhack2024/pages/marketplace.dart';
import 'package:manna_vhack2024/pages/soil.dart';
import 'package:manna_vhack2024/pages/claysoil.dart';
import 'package:manna_vhack2024/pages/soil_prepare.dart';
import 'package:manna_vhack2024/pages/pest_management.dart';
import 'package:manna_vhack2024/pages/pests_diseases.dart';
import 'package:manna_vhack2024/pages/pests_diseases_tomato.dart';
import 'package:manna_vhack2024/pages/pests_diseases_tomato_learn_more.dart';
import 'package:manna_vhack2024/pages/pests_diseases_damping_off.dart';
import 'package:manna_vhack2024/pages/pest_monitoring.dart';
import 'package:manna_vhack2024/pages/camera.dart';
import 'package:manna_vhack2024/pages/camera_health_condition.dart';
import 'package:manna_vhack2024/pages/crop_planting_tips.dart';

//first default page is home page
void main() => runApp(MaterialApp(initialRoute: '/login', routes: {
      '/login': (context) => const login(),
      '/signUp': (context) => const signUp(),
      '/home': (context) => const botNavBar(),
      '/news': (context) => const news(),
      '/community': (context) => const community(),
      '/ai_assistant': (context) => const ai_assistant(),
      '/marketplace': (context) => const marketplace(),
      '/account': (context) => const account(),
      '/soil': (context) => const soil(),
      '/clay': (context) => const claysoil(),
      '/soil_prepare': (context) => const soil_prepare(),
      '/pest_management': (context) => const pest_management(),
      '/pests_diseases': (context) => const pests_diseases(),
      '/pests_diseases_tomato': (context) => const pests_diseases_tomato(),
      '/pests_diseases_tomato_learn_more': (context) => const pests_diseases_tomato_learn_more(),
      '/pests_diseases_damping_off': (context) => pests_diseases_damping_off(),
      '/pest_monitoring': (context) => pest_monitoring(),
      '/camera': (context) => camera(),
      '/camera_health_condition': (context) => camera_health_condition(),
      '/crop_planting_tips': (context) => crop_planting_tips(),
    }));
