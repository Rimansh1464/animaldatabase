// import 'package:db_miner_2/models/animal_data.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modal/animal_modal_data.dart';

class AnimalAPIHelper {
  AnimalAPIHelper._();

  static final AnimalAPIHelper animalAPIHelper = AnimalAPIHelper._();

  Future<List<Animal>?> fetchingApiData({required String name}) async {
    http.Response response = await http.get(
        Uri.parse("https://api.api-ninjas.com/v1/animals?name=$name"),
        headers: {'X-Api-Key': '+NFA9iEnVi2wqDLxMVHToA==iQ4HqxgkrDLVuM3w'});


    if (response.statusCode == 200) {
       List<Animal> allanimal = animalJson(response.body);
      // List<dynamic> decodedData = jsonDecode(response.body);
      //
      // AnimalAll myAnimal = AnimalAll.fromMap(data: decodedData[0]);
print("======================.........................................................................................======================");
      print(allanimal[1].name);
      print(allanimal[2].color);
      print(allanimal[3].color);
      print(allanimal[4].color);
      print(allanimal.length);
      print("======================.........................................................................................======================");

      return allanimal;
    }
    return null;
  }

}
