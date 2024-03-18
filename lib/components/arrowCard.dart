import 'package:flutter/material.dart';

class arrowCard extends StatelessWidget {
  arrowCard({
    Key? key,
    required this.img,
    required this.title,
    required this.content,
    required this.nav,
  }) : super(key: key);

  final String img, title, content, nav;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 1, 12.0, 1),
      child: Card(
        color: Color.fromRGBO(234, 239, 248, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(
            color: Colors.black, // Use the color from the map, default to black if the color name is not found
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
          child: Row(
            children: <Widget>[
              Image.asset(
                'assets/$img',
                fit: BoxFit.cover,
                width: 60,
                height: 60,
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
                    Text(
                      content,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        color: Color.fromRGBO(43, 51, 68, 1),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios), // This is the arrow icon
                color: Colors.black, // Specify the color here
                onPressed: () {
                  // Handle the button press here
                  Navigator.pushNamed(context, nav);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
