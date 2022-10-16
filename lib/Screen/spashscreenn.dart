import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

import '../helper/db_helper.dart';
import '../helper/imagelist.dart';
import '../modal/animal_modal_data.dart';
Future<List<Animal>>? dbPostData;

class SplashScren extends StatefulWidget {
  const SplashScren({Key? key}) : super(key: key);

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  Future<List<Animal>?> AddDatabase() async {
    setState(() {
      dbPostData = DBhelper.dbBhelper.fetchAlldata();

      print(
          "udisfgvdsabn ${dbPostData}");
    });
  }
  InserData() async {

    await DBhelper.dbBhelper.insertData();
    DBhelper.dbBhelper.fetchAlldata();

    // print(animalList[0].image);
  }
  Random random = Random();
  @override
  void initState() {
    super.initState();
    AddDatabase();
    InserData();
  }
  List<String> randompic = [
    "asserts/image/elephant-3.jpg",
    "asserts/image/elephant-wallpaper-idlewp-2.jpg",
    "asserts/image/tiger_3.jpg",
    "asserts/image/25fc5f91a86d5ff24f6ecedcae2f77cf.jpg",
    "asserts/image/photo-1469938945416-24ed556bbaff.jfif",
    "assets/images/eagle.jpg",
    "assets/images/rabbit.jpg",
    "assets/images/parrot.jpg",
    "assets/images/duck.jpg",
    "assets/images/panda.jpg",
    "assets/images/monkey.jpg",
    "assets/images/elephant.jpg",
    "assets/images/ra.jpg",
  ];
  Widget build(BuildContext context) {

    int res = random.nextInt(5);
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "${randompic[res]}",
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ready to \nWatch?",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Elephants play an important role in enabling the Forest Department to effectively patrol and protect the reserve from illegal activity while minimizing damage to the forest itself. ",
                  style: TextStyle(fontSize: 13,color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Start Enjotiing",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.white),
                    ),
                    const Spacer(),
                    Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30),
                        child: IconButton(onPressed: (){Navigator.pushNamed(context, '/');}, icon: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 30,)))
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
