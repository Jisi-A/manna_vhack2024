import 'package:flutter/material.dart';

class pest_monitoring extends StatefulWidget {
  const pest_monitoring({super.key});

  @override
  State<pest_monitoring> createState() => _pest_monitoringState();
}

class _pest_monitoringState extends State<pest_monitoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Pest Monitoring'),
        ),
        centerTitle: false,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
          fontSize: 30,
          letterSpacing: 1.0,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pest monitoring is like keeping an eye on bugs or rodents in places like farms or buildings. It helps us spot them early, so we can control them before they cause too much damage. We use traps, checks, and tools to keep track of their numbers and activities. This way, we can take action to protect crops, homes, or businesses from pest problems.',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Importance of Pest Monitoring : ',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              _buildImportanceRow('Early detection of pest outbreaks'),
              _buildImportanceRow('Minimization of damage and economic losses'),
              _buildImportanceRow('Evaluation of effectiveness of pest control strategies'),
              _buildImportanceRow('Informed decision-making for integrated pest management programs'),
              const SizedBox(height: 20.0),
              Text(
                'How to monitor pests in a field : ',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              _buildStepRow('1', 'Field Visit', 'Go to the field regularly, usually 2 times each week.', 'assets/field_check.jpeg'),
              _buildStepRow('2', 'Check Key Areas', 'Look in places where pests often hide or where you\'ve seen them before, especially the corners of the field.', 'assets/check_key_area.jpeg'),
              _buildStepRow('3', 'Watch for Problems', 'Keep an eye out for any signs of pests or damage to plants.', 'assets/watch_for_problems.jpeg'),
              _buildStepRow('4', 'Examine the Entire Crop and Take Notes with the problems', 'Write down what you find, like what pests you see and how many for future action and prevention.', 'assets/examine_crop.jpeg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImportanceRow(String text) {
    return Row(
      children: [
        Icon(Icons.check_circle, color: Colors.green),
        SizedBox(width: 10.0),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }

  Widget _buildStepRow(String number, String topText, String bottomText, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.green, Colors.lightGreen],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  number,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      topText,
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      bottomText,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Center(
            child: Image.asset(
              imagePath,
              width: 300.0,
              height: 300.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}