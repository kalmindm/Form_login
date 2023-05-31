import 'package:flutter/material.dart';
import 'package:luyen_tap/sign_in_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = false;
  void setCheck() {
    check = !check;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  'SIGN IN TO YOUR ACCOUNT',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              border: Border(),
            ),
            height: 70,
            width: width * 0.7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
              child: const Text(
                'johnnythedesigner@gmail.com',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              border: Border(),
            ),
            height: 70,
            width: width * 0.7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
              child: const Text(
                '********',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 105),
            child: Row(
              children: [
                InkWell(
                  onTap: setCheck,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: const Border(
                        left: BorderSide(width: 1, color: Colors.grey),
                        right: BorderSide(width: 1, color: Colors.grey),
                        top: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                    child: check
                        ? const Icon(
                            Icons.check,
                            color: Colors.amber,
                          )
                        : Container(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('Keep me in signed'),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Sign_in()));
            },
            child: Container(
              height: 70,
              width: width * 0.7,
              decoration:
                  BoxDecoration(border: Border(), color: Colors.purple[400]),
              child: Center(
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('Forgot your password?'),
        ],
      ),
    );
  }
}
