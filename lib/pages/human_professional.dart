import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manna_vhack2024/components/profesional.dart';

class HumanProfessional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Professional'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      floatingLabelBehavior: FloatingLabelBehavior
                          .never, // Prevents label from moving up
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                          child: Text(
                            "Nearest",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Expanded(
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        Expanded(child: Text("Followers")),
                        IconButton(
                          icon: Icon(Icons.sort),
                          onPressed: () {
                            // Add sorting functionality here
                          },
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Expanded(child: Text("Sessions")),
                        IconButton(
                          icon: Icon(Icons.sort),
                          onPressed: () {
                            // Add sorting functionality here
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 115,
                        child: Expanded(
                          child: Divider(
                            color: Colors.green,
                            thickness: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Professional(),
                        Professional(
                          name: "Rosemary Mullen",
                        ),
                        Professional(name: "David Parkinson"),
                        Professional(name: "Liam Payne"),
                        Professional(
                          name: "Aoha Yamamoto",
                        ),
                        Professional(name: "Siti Aishah"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
