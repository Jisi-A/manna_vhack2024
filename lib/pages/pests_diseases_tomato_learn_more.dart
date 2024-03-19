import 'package:flutter/material.dart';

class pests_diseases_tomato_learn_more extends StatefulWidget {
  const pests_diseases_tomato_learn_more({super.key});

  @override
  State<pests_diseases_tomato_learn_more> createState() => _pests_diseases_tomato_learn_moreState();
}

class _pests_diseases_tomato_learn_moreState extends State<pests_diseases_tomato_learn_more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Tomato'),
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
              const Text(
                'Seedling Stage :',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'The seedling stage of crops is the early phase of growth after germination, where the seeds have sprouted into small plants with true leaves emerging. During this stage, seedlings are vulnerable to environmental stresses and pest damage.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              _buildRow('assets/damping_off.jpg', 'Damping-off', 'Fungal (Disease)'),
              _buildDivider(),
              _buildRow('assets/aphids.png', 'Aphids', 'Insects (Pests)'),
              _buildDivider(),
              _buildRow('assets/whiteflies.jpg', 'Whiteflies', 'Insects (Pests)'),
              _buildDivider(),
              _buildRow('assets/thrips.jpg', 'Thrips', 'Insects (Pests)'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String imagePath, String topText, String bottomText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            height: 120.0, // Fixing the height of the image container
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Rounded corners
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 1, // Border width
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topText,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  bottomText,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Colors.grey,
      thickness: 1,
      height: 20,
    );
  }
}
