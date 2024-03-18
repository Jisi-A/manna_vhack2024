import 'package:flutter/material.dart';

class pests_diseases_tomato extends StatefulWidget {
  @override
  State<pests_diseases_tomato> createState() => _pests_diseases_tomatoState();
}

class _pests_diseases_tomatoState extends State<pests_diseases_tomato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text('Tomato'),
        ),
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
          fontSize: 30,
          letterSpacing: 1.0,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Stage of Pests and Diseases:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pests and diseases go through different stages of development, where they may cause harm to plants or animals.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Seedling Stage
            _buildStageRow('Seedling Stage', 'assets/seedling_stage.png'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/damping_off.jpg', 'Damping-off', 'Fungal (Disease)', '/clay'),
                _buildContainer('assets/aphids.png', 'Aphids', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/whiteflies.jpg', 'Whiteflies', 'Insects (Pests)', '/clay'),
                _buildContainer('assets/thrips.jpg', 'Thrips', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            _buildLearnMoreButton('/pests_diseases_tomato_learn_more'),
            SizedBox(height: 40),
            // Vegetative Stage
            _buildStageRow('Vegetative Stage', 'assets/vegetative_stage.png'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/damping_off.jpg', 'Damping-off', 'Fungal (Disease)', '/clay'),
                _buildContainer('assets/aphids.png', 'Aphids', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/whiteflies.jpg', 'Whiteflies', 'Insects (Pests)', '/clay'),
                _buildContainer('assets/thrips.jpg', 'Thrips', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            _buildLearnMoreButton('/pests_diseases_another_stage'),
            SizedBox(height: 40),
            // Flowering Stage
            _buildStageRow('Flowering Stage', 'assets/flowering_stage.png'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/damping_off.jpg', 'Damping-off', 'Fungal (Disease)', '/clay'),
                _buildContainer('assets/aphids.png', 'Aphids', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/whiteflies.jpg', 'Whiteflies', 'Insects (Pests)', '/clay'),
                _buildContainer('assets/thrips.jpg', 'Thrips', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            _buildLearnMoreButton('/pests_diseases_another_stage'),
            SizedBox(height: 40),
            // Fruiting Stage
            _buildStageRow('Fruiting Stage', 'assets/fruiting_stage.png'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/damping_off.jpg', 'Damping-off', 'Fungal (Disease)', '/clay'),
                _buildContainer('assets/aphids.png', 'Aphids', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/whiteflies.jpg', 'Whiteflies', 'Insects (Pests)', '/clay'),
                _buildContainer('assets/thrips.jpg', 'Thrips', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            _buildLearnMoreButton('/pests_diseases_another_stage'),
            SizedBox(height: 40),
            // Harvesting Stage
            _buildStageRow('Harvesting Stage', 'assets/harvesting_stage.png'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/damping_off.jpg', 'Damping-off', 'Fungal (Disease)', '/clay'),
                _buildContainer('assets/aphids.png', 'Aphids', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer('assets/whiteflies.jpg', 'Whiteflies', 'Insects (Pests)', '/clay'),
                _buildContainer('assets/thrips.jpg', 'Thrips', 'Insects (Pests)', '/clay'),
              ],
            ),
            SizedBox(height: 20),
            _buildLearnMoreButton('/pests_diseases_another_stage'),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildStageRow(String stage, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, // Border color for the circle avatar
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          SizedBox(width: 10),
          Text(
            stage,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(String imagePath, String topText, String bottomText, String nextPage) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, nextPage);
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.75),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      topText,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      bottomText,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLearnMoreButton(String nextPage) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, nextPage);
        },
        child: Text(
          'LEARN MORE',
          style: TextStyle(
            color: Colors.white, // Text color
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: const Color.fromARGB(255, 90, 213, 163), // Border color
              width: 2, // Border width
            ),
          ),
          elevation: 5,
          backgroundColor: const Color.fromARGB(255, 4, 106, 65), // Button color
        ),
      ),
    );
  }
}
