import 'package:flutter/material.dart';

class pests_diseases_damping_off extends StatefulWidget {
  @override
  State<pests_diseases_damping_off> createState() => _pests_diseases_damping_offState();
}

class _pests_diseases_damping_offState extends State<pests_diseases_damping_off> {
  bool showAction = true; // Variable to track which container to show

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Damping-off',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            fontSize: 30,
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDescription(),
            _buildDivider(),
            _buildPictures(),
            _buildDivider(),
            _buildSymptoms(),
            _buildDivider(),
            _buildCauses(),
            SizedBox(height: 20.0),
            StatefulBuilder(
              builder: (context, setState) {
                return _buildActionAndPrevention(setState);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey,
      thickness: 1,
      height: 20,
    );
  }

  Widget _buildDescription() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descriptions : ',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Damping-off is a common fungal disease that affects seedlings of various plant species, including tomatoes. It typically occurs in moist, poorly ventilated conditions and can lead to significant losses in seedling populations.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPictures() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pictures:',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildImage('assets/damping_off.jpg'),
                _buildImage('assets/damping_off2.jpg'),
                _buildImage('assets/damping_off3.jpg'),
                // Add more images as needed
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.black, // Border color
            width: 1.0, // Border width
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            imagePath,
            width: 150.0,
            height: 150.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildSymptoms() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Symptoms: ',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '1. Seedling Collapse\n2. Rotting Seeds\n3. Stunted Growth\n4. Root Rot\n5. Fungal Growth',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCauses() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Causes:',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Damping-off in tomato seedlings is primarily caused by soil-borne fungi like Pythium, Rhizoctonia, and Fusarium. These pathogens thrive in moist conditions, which are often exacerbated by overwatering, poor drainage, and high humidity. Crowded seedlings, contaminated tools, and low temperatures also contribute to its development. Prevention involves using sterilized soil, maintaining proper spacing, providing good drainage, and ensuring adequate ventilation. Fungicidal treatments and biocontrol agents can also help manage damping-off outbreaks.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionAndPrevention(Function setState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAction = true; // Show ACTION container
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  backgroundColor: showAction ? Colors.white : const Color.fromARGB(255, 3, 81, 50), // Change color based on condition
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0), // Add padding for top and bottom
                  child: Text(
                    'ACTION',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: showAction ? const Color.fromARGB(255, 3, 81, 50) : Colors.white, // Change text color based on condition
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 2.0), // Adjust spacing between buttons
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAction = false; // Show PREVENTION container
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                    ),
                  ),
                  backgroundColor: !showAction ? Colors.white : const Color.fromARGB(255, 3, 81, 50), // Change color based on condition
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0), // Add padding for top and bottom
                  child: Text(
                    'PREVENTION',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: !showAction ? const Color.fromARGB(255, 3, 81, 50) : Colors.white, // Change text color based on condition
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        // Conditionally show either ACTION or PREVENTION container
        showAction ? _buildActionContainer() : _buildPreventionContainer(),
      ],
    );
  }

  Widget _buildActionContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Action:',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'If some seedlings in a tray are affected by damping-off while others appear healthy, refrain from immediately transplanting the healthy ones into your garden. Doing so could potentially spread the soilborne pathogen if it\'s present in part of the tray, along with fungal threads or spores.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Instead, take the following actions:',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '1. If the seedlings are particularly valuable, consider carefully potting up each healthy seedling individually.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '2. Then, isolate the healthy seedlings from seed raising media, potting mix, and other plants to prevent any potential contamination.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '3. Maintain strict hygiene practices to minimize the risk of spreading the disease.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '4. Lastly, apply liquid feed containing seaweed and microbial inoculants to promote robust growth and increase the chances of survival and thriving.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 5.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
            child: Image.asset(
              'assets/action_step4.png',
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPreventionContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Prevention:',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          _buildPreventionStep(
            title: 'Sterilize Soil and Containers:',
            description:
                'Use sterilized soil and clean containers to sow seeds and raise seedlings, minimizing the presence of fungal pathogens.',
          ),
          _buildPreventionStep(
            title: 'Proper Drainage:',
            description:
                'Ensure containers have adequate drainage holes and avoid overwatering to prevent waterlogging, which creates conditions favorable for fungal growth.',
          ),
          _buildPreventionStep(
            title: 'Good Air Circulation:',
            description:
                'Provide adequate air circulation around seedlings to reduce humidity and discourage fungal development.',
          ),
          _buildPreventionStep(
            title: 'Spacing:',
            description:
                'Plant seeds or seedlings at appropriate distances to avoid overcrowding, which can lead to poor air circulation and increased humidity.',
          ),
          _buildPreventionStep(
            title: 'Hygiene Practices:',
            description:
                'Practice good hygiene by disinfecting tools, pots, and trays before use to prevent the spread of fungal pathogens.',
          ),
          _buildPreventionStep(
            title: 'Avoid Overwatering:',
            description:
                'Water seedlings carefully, ensuring the soil remains moist but not waterlogged. Avoid splashing water onto the foliage to prevent fungal spread.',
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _buildPreventionStep({required String title, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: Colors.black, // Color of bullet
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.0), // Adjust spacing as needed
        Padding(
          padding: const EdgeInsets.only(left: 20.0), // Adjust left padding to align with the circle container
          child: Text(
            description,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}