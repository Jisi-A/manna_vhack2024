import 'package:flutter/material.dart';

class arrowCard extends StatelessWidget {
  const arrowCard({
    super.key,
    required this.img,
    required this.title,
    required this.content,
    required this.nav,
  });

  final String img, title, content, nav;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 2, 12.0, 2),
      child: InkWell(
        highlightColor: Colors.green, // color when tapped
        splashColor: Colors.blue, // color of the "splash" effect
        onTap: () {
          Navigator.pushNamed(context, nav);
        },
        child: Card(
          color: const Color.fromRGBO(234, 239, 248, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/$img',
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        content,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                          color: Color.fromRGBO(43, 51, 68, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.black)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
