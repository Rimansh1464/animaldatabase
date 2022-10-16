import 'dart:developer'as log_print;

import 'package:database_animal/helper/db_helper.dart';
import 'package:flutter/material.dart';

import '../helper/api_helper.dart';
import '../helper/imagelist.dart';
import '../modal/animal_modal_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List<Animal> allAnimal = [];


  @override
  void initState() {
    super.initState();
   // DBhelper.dbBhelper.fetchAlldata();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff235230),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Choose a plan",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(15),
                      //     topRight: Radius.circular(15)),
                      color: Colors.grey),
                  child: Image.asset(
                    'asserts/image/h1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Week Subsciption',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text("₹399",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.grey),
                  child: Image.asset(
                    'asserts/image/h2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          '1 Month Subsciption',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text("₹999",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Image.asset(
                    'asserts/image/h3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          '3 Month Subsciption',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text("₹1699",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white30),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'AnimalPage');
                            },
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 30,
                            ))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
