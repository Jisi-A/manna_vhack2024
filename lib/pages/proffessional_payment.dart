import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class profPayment extends StatefulWidget {
  final String name;
  profPayment({this.name = "Rosemary Mullen"});

  @override
  State<profPayment> createState() => _profPaymentState();
}

class _profPaymentState extends State<profPayment> {
  int selectedMode = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Book a session with ${widget.name}"),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedMode = 1;
                            });
                          },
                          child: Text(
                            "On-site (RM35)",
                            style: TextStyle(
                              color: selectedMode == 1
                                  ? Color.fromARGB(255, 7, 175, 107)
                                  : Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: Colors.white)),
                            elevation: MaterialStateProperty.all(0),
                            overlayColor: MaterialStateProperty.all(Colors
                                .transparent), // Make the splash color transparent
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedMode = 2;
                            });
                          },
                          child: Text(
                            "Online (RM25)",
                            style: TextStyle(
                              color: selectedMode == 2
                                  ? Color.fromARGB(255, 7, 175, 107)
                                  : Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: Colors.white)),
                            elevation: MaterialStateProperty.all(0),
                            overlayColor: MaterialStateProperty.all(Colors
                                .transparent), // Make the splash color transparent
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: selectedMode == 1
                            ? Color.fromARGB(255, 7, 175, 107)
                            : Colors.black,
                      )),
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: selectedMode == 2
                            ? Color.fromARGB(255, 7, 175, 107)
                            : Colors.black,
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date and time: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("30 February 2024"),
                                Text("2:15pm"),
                              ]),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Change",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 48, 91, 187),
                                    fontSize: 17), // Adjusted font size
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          selectedMode == 2 ? Icons.laptop : Icons.location_on,
                          size: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                selectedMode == 2 ? "Medium" : "Address",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(selectedMode == 2
                                  ? "Zoom (Link will be emailed after payment)"
                                  : "1, Jalan 2, Taman 3,\nKuala Mudah, Kedah, 08000"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                selectedMode == 2 ? "" : "Change",

                                style: TextStyle(
                                    color: Color.fromARGB(255, 48, 91, 187),
                                    fontSize: 17), // Adjusted font size
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Payment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/mastercard.png',
                  width: 150, // Adjusted width
                  height: 100, // Adjusted height
                ),
                Text('**** **** **** 3947'),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Change",
                        style: TextStyle(
                            color: Color.fromARGB(255, 48, 91, 187),
                            fontSize: 17), // Adjusted font size
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Payment details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Booking price:"),
                    Text("SST(6%)"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("RM35.00"),
                    Text("RM2.10"),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("RM37.10",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Pay",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18), // Adjusted font size
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: Size(150, 50), // Adjusted button size
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
