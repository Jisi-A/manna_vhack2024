import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class ai_assistant extends StatefulWidget {
  @override
  State<ai_assistant> createState() => _ai_assistantState();
}

class _ai_assistantState extends State<ai_assistant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: 'AI Expert',
          isIcon: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/ai.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('AI Expert',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  )
                ],
              ),
              Text(
                  'As a plant and crop expert, I’m here to assist you with any questions related to plants, gardening, and agriculture. Feel free to ask, and let’s cultivate some green knowledge together! 🌱🌿🌻'),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text('You',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ),
              ),
              Text(
                  'My area had a flood for a few days and my seedlings are ruined, what should I do?'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/ai.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('AI Expert',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("You gonna cry? The fuck you want me to do?"),
              ),
            ],
          ),
        ));
  }
}
