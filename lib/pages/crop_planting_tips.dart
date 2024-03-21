import 'package:flutter/material.dart';

class crop_planting_tips extends StatefulWidget {
  const crop_planting_tips({super.key});

  @override
  State<crop_planting_tips> createState() => _crop_planting_tipsState();
}

class _crop_planting_tipsState extends State<crop_planting_tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Crop Planting Tips',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              fontSize: 30,
              letterSpacing: 1.0,
            ),
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWeeksContainer(
              'Weeks 1-4:',
              [
                'Prepare the soil by removing weeds, rocks, and debris.',
                'Amend the soil with compost or organic matter to improve fertility.',
                'Start indoor seedlings for crops that require a longer growing season, such as tomatoes, peppers, and eggplants.',
                'Begin sowing seeds directly in the garden for early-season crops like lettuce, spinach, peas, and radishes.'
              ],
            ),
            SizedBox(height: 20.0),
            _buildWeeksContainer(
              'Weeks 5-8:',
              [
                'Continue planting cool-season crops such as carrots, beets, kale, and broccoli.',
                'Transplant seedlings started indoors into the garden once they have developed strong roots and the threat of frost has passed.',
                'Monitor soil moisture levels and water as needed, ensuring consistent moisture for germinating seeds and young plants.',
                'Apply organic mulch around plants to conserve moisture, suppress weeds, and regulate soil temperature.'
              ],
            ),
            SizedBox(height: 20.0),
            _buildWeeksContainer(
              'Weeks 9-12:',
              [
                'Plant warm-season crops like cucumbers, squash, and beans after the last frost date.',
                'Provide support structures for vining crops such as tomatoes, cucumbers, and peas.',
                'Incorporate organic fertilizer or compost into the soil around existing plants to promote healthy growth.',
                'Monitor for pests and diseases, and take appropriate measures for control, such as handpicking pests or applying organic pest control methods.'
              ],
            ),
            SizedBox(height: 20.0),
            _buildWeeksContainer(
              'Weeks 13-16:',
              [
                'Continue planting warm-season crops and succession planting for a continuous harvest.',
                'Thin seedlings as needed to allow adequate spacing for mature plants.',
                'Mulch around plants to conserve moisture and suppress weeds, replenishing mulch as needed.',
                'Monitor plant growth and provide supplemental nutrients if necessary, based on soil tests or visual cues of nutrient deficiencies.'
              ],
            ),
            SizedBox(height: 20.0),
            _buildWeeksContainer(
              'Weeks 17-20:',
              [
                'Harvest crops as they mature, maintaining a regular schedule to prevent overripening or bolting.',
                'Remove spent plants and add them to the compost pile to recycle nutrients back into the soil.',
                'Rotate crops in future seasons to prevent soil depletion and minimize pest and disease pressure.',
                'Begin planning for fall and winter crops, considering the timing of planting and potential frost dates for your region.'
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeeksContainer(String title, List<String> tips) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 172, 232, 181),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: tips
                .map((tip) => Padding(
                      padding: const EdgeInsets.only(bottom: 15.0), // Add padding only at the bottom
                      child: Row(
                        children: [
                          Icon(
                            Icons.eco,
                            size: 18.0,
                            color: Colors.green,
                          ),
                          SizedBox(width: 8.0), // Add some space between icon and text
                          Flexible(
                            child: Text(
                              tip,
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
