import 'dart:convert';
import 'dart:developer';

import 'package:database_animal/helper/api_helper.dart';
import 'package:database_animal/helper/imagelist.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../modal/animal_modal_data.dart';

class DBhelper {
  DBhelper._();

  static final DBhelper dbBhelper = DBhelper._();
  Database? db;
  String databasePath = "";

  List<String> animal = [
    "tiger",
    "Elephant",
    "Zebra",
    "Horse",
  ];

  Future<Database?> initDb() async {
    String path = await getDatabasesPath();
    databasePath = join(path, "database.db");

    db = await openDatabase(databasePath, version: 1,
        onCreate: (Database db, version) async {
      log("$db", name: "Create DataBase ==>");
      String query =
          "CREATE TABLE IF NOT EXISTS animal(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,color TEXT,skin_type TEXT,top_speed TEXT,weight TEXT,length TEXT,image BLOB);";
      await db.execute(query);
      print("Table Created ==> $db");
    });

    String query =
        "CREATE TABLE IF NOT EXISTS animal(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,color TEXT,skin_type TEXT,top_speed TEXT,weight TEXT,length TEXT,image BLOB);";
    await db!.execute(query);
    return db;
  }

//
//  Future<String?> ApiData({required name})async{
//
//      var list = AnimalAPIHelper.animalAPIHelper.fetchingTigerData(name: name);
// return list
//   }
  Future<void> insertData() async {
    db = await deleteRecord();
    List<Animal> animaListData = [];
    print('==================insretdata=====================');
    db = await initDb();
    for (int i = 0; i < animal.length; i++) {
      List<Animal>? data = await AnimalAPIHelper.animalAPIHelper.fetchingApiData(name: animal[i]);

      if(data !=null){
        for(Animal value in data){
          animaListData.add(value);
        }
      }
      print("${animal[i]} length ${data!.length} - ${animaListData.length}");
    }
    print("sjfndhvjbrnsfm,vbhktnfc ${animaListData.length}");
    int i = 0;
    while (i < animaListData.length) {
      Animal post = animaListData[i];
      String query =
          "INSERT INTO animal(id, name,color,skin_type,top_speed,weight,length,image) VALUES(?,?,?,?,?,?,?,?)";
      List arg = [
        null,
        '${post.name}',
        '${post.color}',
        '${post.skinType}',
        '${post.topSpeed}',
        '${post.weight}',
        '${post.length}',
        (allAnimalList[i]),

      ];
      int id = await db!.rawInsert(query, arg);
      print("indrt i n to $id");
      // print("color => ${post.color} ");
      // print("name => ${post.name} ");
      // print("skontype => ${post.skinType} ");
      // print("topSpeed => ${post.topSpeed} ");
      // print("weight => ${post.weight} ");
      print(post.name);
      i++;
    }
    i = 0;
    animaListData.clear();
  }

  Future<List<Animal>> fetchAlldata() async {
    db = await initDb();

    String query = "SELECT * FROM animal";

    List<Map<String, dynamic>> fetchData = await db!.rawQuery(query);

    print("osdijfhnsamkl ==> ${fetchData.length}  ${fetchData[1]}");


    List<Animal> allDBPost = animalFromJson(jsonEncode(fetchData));

    print("osdijfhnsamklllllll ==> ${allDBPost.length} ${allDBPost[0].name}");
    return allDBPost;
  }
  Future<List<Animal>> searchData({required String val}) async {
    db = await initDb();

    String query = "SELECT * FROM animal WHERE name LIKE '%$val%';";

    List<Map<String, dynamic>> res = await db!.rawQuery(query);

    List<Animal> searchAnimal = animalFromJson(jsonEncode(res));

    return searchAnimal;
  }
  deleteRecord() async {
    db = await initDb();

    String query = "DROP TABLE animal;";
   await db!.execute(query);
    //print("teble delet $dbId");
  }
}
