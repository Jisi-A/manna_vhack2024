import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class ai_assistant extends StatefulWidget {
  const ai_assistant({super.key});

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
        body: SingleChildScrollView(
          child: Padding(
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
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
                  child: Text(
                      "I’m sorry to hear that. Here are some steps you can take to assess the situation and potentially salvage what you can:"
                      '\n\t1. Evaluate the Damage:'
                      '\n\t\t-Inspect the seedlings carefully. Look for signs of stress, wilting, or rot.\n\t\t-If the seedlings are severely damaged or beyond recovery, it might be best to start fresh with new seeds.'
                      '\n\n\t2. Remove Debris:'
                      '\n\t\t-Clear away any debris or mud around the seedlings. Gently wash off the soil if needed.\nt\t\t-Be cautious not to disturb the fragile roots.'
                      '\n\n\t3. Prune and Trim:'
                      '\n\t\t-Trim any damaged or yellowing leaves. Pruning helps redirect energy to healthier parts of the plant.\n\t\t-Remove any waterlogged or rotting stems.'
                      '\n\n\t4. Replant if Necessary:'
                      '\n\t\t-If some seedlings are salvageable, consider replanting them in fresh soil or containers.\n\t\t-Use well-draining soil to prevent waterlogging.'
                      '\n\n\t5. Provide Adequate Drainage:'
                      '\n\t\t-Ensure proper drainage for your seedlings. Elevate containers or create raised beds if possible.\n\t\t-Avoid overwatering during this recovery period.'
                      '\n\n\t6. Protect from Pests and Diseases:'
                      '\n\t\tFloods can disrupt the ecosystem and attract pests. Keep an eye out for signs of infestations.\n\t\t-Apply appropriate treatments if needed.'),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Ask me anything',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 7, 175,
                                107), // Set the text color to green
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: const Color.fromARGB(255, 7, 175,
                                107), // Set the border color to green
                            width: 2, // Set the border width
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'How do I prepare the soils?',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 7, 175,
                                107), // Set the text color to green
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: const Color.fromARGB(255, 7, 175,
                                107), // Set the border color to green
                            width: 2, // Set the border width
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Does the pot size matter?',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 7, 175,
                                107), // Set the text color to green
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: const Color.fromARGB(255, 7, 175,
                                107), // Set the border color to green
                            width: 2, // Set the border width
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Ask me anything...\n\n0/4000',
                          labelStyle: TextStyle(
                            fontSize: 12,
                          ), // Decreased the font size to 12
                          suffixIcon: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              // Handle the send button press
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
