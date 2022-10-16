import 'package:database_animal/Screen/details_page.dart';
import 'package:database_animal/Screen/spashscreenn.dart';
import 'package:flutter/material.dart';

import '../helper/db_helper.dart';
import '../modal/animal_modal_data.dart';

class AnimalPage extends StatefulWidget {
  const AnimalPage({Key? key}) : super(key: key);

  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  @override
  late List decodedPostData;
  bool tiger = false;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text(
                    "All Animal",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          SizedBox(
            height: 25,
          ),
          (dbPostData == null)
              ? (Center(child: CircularProgressIndicator()))
              : (Container(
                  height: 350,
                  child: FutureBuilder(
                    future: dbPostData,
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasError) {
                        Center(
                          child: Text("${snapshot.error}"),
                        );
                      } else if (snapshot.hasData) {
                        List<Animal> AllAnimal = snapshot.data;
                        return ListView.builder(
                          itemCount: AllAnimal.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailsPage(
                                            allanimal: AllAnimal[i]),
                                      ));
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "${AllAnimal[i].image}"),
                                          fit: BoxFit.cover),
                                      color: Colors.black38),
                                  //child: widget(child: Image.network("${AllAnimal[index].image}", fit: BoxFit.cover)),
                                ),
                              ),
                            );
                          },
                        );

                        //
                      }
                      return Center(
                        child: Text(
                            "${snapshot.hasData}, ${snapshot.data.length}"),
                      );
                    },
                  ),
                )),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Animal",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () async {
                        tiger = true;
                        dbPostData =
                            DBhelper.dbBhelper.searchData(val: "tiger");
                        setState(() {});
                      },
                      child: Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey),
                        child: const Center(
                          child: Text(
                            "Tiger",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        dbPostData =
                            DBhelper.dbBhelper.searchData(val: "Elephant");
                        setState(() {});
                      },
                      child: Container(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            "Elephant",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () async {
                        dbPostData =
                            DBhelper.dbBhelper.searchData(val: "Zebra");
                        setState(() {});
                      },
                      child: Container(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            "Zebra",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        dbPostData =
                            DBhelper.dbBhelper.searchData(val: "Horse");
                        setState(() {});
                      },
                      child: Container(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            "Horse",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showdilog() {}
}
