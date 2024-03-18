import 'package:flutter/material.dart';

class plainCard extends StatelessWidget {
  plainCard({
    Key? key,
    required this.borderColor,
    required this.borderWidth,
    required this.bgColor,
    required this.img,
    required this.title,
    required this.content,
    required this.showProgressBar
  }) : super(key: key);

  final String borderColor, bgColor, img, title, content;
  final double borderWidth;
  final bool showProgressBar;

  // Define a map of color names to Color objects
  final Map<String, Color> colorMap = {
    'blue': Color.fromRGBO(48, 91, 187, 1),
    'white': Colors.white,
    'green': Color.fromRGBO(57, 205, 145, 1),
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: colorMap[bgColor],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(
            color: colorMap[borderColor] ?? Colors.black, // Use the color from the map, default to black if the color name is not found
            width: borderWidth,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // Specify the border color here
                  width: 2.0, // Specify the border width here
                ),
              ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/$img',
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (showProgressBar) ...[
                    SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 10.0,
                      child: LinearProgressIndicator(
                        value: 0.5, // Replace 'progress' with your actual progress value
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    ],
                    Text(
                      content,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
