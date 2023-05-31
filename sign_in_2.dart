import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              height: 150,
              width: width * 2,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
              height: 70,
              width: width * 0.66,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.all(Radius.circular(70)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 10, 10),
                child: const Text(
                  'Username',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 70,
            width: width * 0.66,
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.all(Radius.circular(70)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 10, 10),
              child: const Text(
                'Password',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(380, 0, 0, 10),
                child: const Text(
                  'Forgot',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: const Text(
                  ' Username/Password?',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            height: 60,
            width: width * 0.66,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(70))),
            child: Center(
              child: const Text(
                'SIGN IN',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Don't have an account?",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'SIGN UP NOW',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
