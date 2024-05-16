import 'package:flutter/material.dart';
import 'login.dart';
import 'sign_up.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 210.0,
            right: 90.0,
            child: Container(
              width: 338.0,
              height: 540.0,
              child: Image.asset(
                'assets/A woman sells her work for a cryptocurrency to a guy.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
           Positioned(
            top: 300.0,
            right: 90.0,
            child: Container(
              width: 339.0,
              height: 58.0,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Buy',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: ' And '),
                    TextSpan(
                      text: 'Sell',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: ' Anything Faster With The Chunky App'),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              children: [
                Text(
                  'Massive discounts and offers when you shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 8, 8, 8),
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 30.0),
                SizedBox(
                  width: 340.0,
                  height: 55.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(45, 107, 158, 1),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: 340.0,
                  height: 55.0,
                  child: ElevatedButton(
                   onPressed: () {
                      // Navigasi ke halaman sign_up_page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                   style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 255, 255),
                    onPrimary: Color.fromRGBO(45, 101, 148, 1),
                  side: BorderSide(
                    color: Color.fromRGBO(45, 73, 144, 1),
                    width: 2.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromRGBO(45, 73, 144, 1),
                  ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: OnboardingScreen(),
    routes: {
      '/login': (context) => LoginPage(),
    },
  ));
}