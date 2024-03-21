import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manna_vhack2024/pages/prof_Detail.dart';
import 'package:manna_vhack2024/pages/proffessional_payment.dart';

class Professional extends StatelessWidget {
  final String rate;
  final String avatarImage;
  final String special;
  final String name;

  Professional({
    this.rate = '25',
    this.avatarImage = 'assets/girl.jpeg',
    this.special = 'pest control, home garden management',
    this.name = 'Chow Qian Ru',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => prof_Detail(
                  rate: this.rate,
                  avatarImage: this.avatarImage,
                  special: this.avatarImage,
                  name: this.name)),
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        color: Colors.white,
        child: Row(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('$avatarImage'),
            ),
            Container(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          child: Text(
                            '$name',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign:
                                TextAlign.left, // Aligns the text to the left
                          ),
                        ),
                      ),
                      Text(
                        '$special',
                        style: TextStyle(
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          "4.5k followers",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    profPayment(name: this.name),
                              ),
                            );
                          },
                          child: Text(
                            "Book(RM$rate)",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 48, 91, 187),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
