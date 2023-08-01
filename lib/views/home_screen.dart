// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 224, 212),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/table.jpg'),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'hi, \nwelcome',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextField(
                    decoration: customInputDecoration('username'),
                  ),
                  customSizedBox(),
                  TextField(
                    decoration: customInputDecoration('password'),
                  ),
                  customSizedBox(),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'forgot my password',
                            style: TextStyle(
                                color: Color.fromARGB(255, 221, 105, 105)),
                          ),
                        )),
                  ),
                  customSizedBox(),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text(
                              'login',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 106, 90, 90)),
                            ),
                          ),
                        )),
                  ),
                  customSizedBox(),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'create account',
                            style: TextStyle(
                                color: Color.fromARGB(255, 202, 132, 132)),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget customSizedBox() => SizedBox(
        height: 20,
      );

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ));
  }
}
