import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  bool isChecked = false, showText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 248, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Image.asset(
                  'assets/Original_Logo_no_bg.png',
                  fit: BoxFit.cover,
                      width: 300,
                      height: 300,
                ),
              ),
              const Text(
                'MANNA',
                style: TextStyle(
                  fontSize: 48,
                  letterSpacing: 10,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'RobotoBlack',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 12, 24, 12),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(6, 136, 84, 1)),
                    ),
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ), // Decreased the font size to 12
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 12, 24, 12),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        showText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          showText = !showText;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(6, 136, 84, 1)),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ), // Decreased the font size to 12
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 12,
                  ),
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                          isChecked = value!;
                        }
                      );
                    },
                  ),
                  Text('Remember me'),
                  Spacer(),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontFamily: 'RobotoBlack',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(54, 122, 255, 1)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Text(
                        "or",
                        style: TextStyle(
                          color: Color.fromRGBO(110, 110, 110, 1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontFamily: 'RobotoBlack',
                            fontSize: 18,
                          ),
                        ),
                        Image.asset(
                          'assets/google.png',
                          height: 24,
                          width: 24,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Need an account?',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child: Text(
                      'Create one',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color.fromRGBO(54, 122, 255, 1),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}