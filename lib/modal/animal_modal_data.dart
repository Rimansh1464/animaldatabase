// To parse this JSON data, do
//
//     final animal = animalFromJson(jsonString);
//
// import 'dart:convert';

// import 'dart:convert';
//
// List<Animal> animalFromJson(String str) =>
//     List<Animal>.from(json.decode(str).map((x) => Animal.fromJson(x)));
//
// String animalToJson(List<Animal> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Animal {
//   Animal({
//     this.name,
//     this.taxonomy,
//     this.image,
//     this.characteristics,
//     required color,
//   });
//
//   String? name;
//   String? image;
//   Taxonomy? taxonomy;
//
//   //List<String>? locations;
//   Characteristics? characteristics;
//
//   factory Animal.fromJson(Map<String, dynamic> json) => Animal(
//         name: json["name"],
//         image: json["image"],
//         taxonomy: json["taxonomy"] == null
//             ? null
//             : Taxonomy.fromJson(json["taxonomy"]),
//         //locations: json["locations"] == null ? []:List<String>.from(json["locations"].map((x) => x)),
//         characteristics: json["characteristics"] == null
//             ? null
//             : Characteristics.fromJson(json["characteristics"]),
//         location: null,
//         color: null,
//       );
//
//   factory Animal.Database({required Map data}) => Animal(
//         name: data["name"],
//         image: data["image"],
//         taxonomy: data["taxonomy"] == null
//             ? null
//             : Taxonomy.fromJson(data["taxonomy"]),
//         color: data["color"],
//         //locations: json["locations"] == null ? []:List<String>.from(json["locations"].map((x) => x)),
//         characteristics: data["characteristics"] == null
//             ? null
//             : Characteristics.fromJson(data["characteristics"]),
//
//       );
//
//   factory Animal.toMap({required Map<String, dynamic> map}) => Animal(
//         name: map['name'],
//         color: map['color'],
//        characteristics["location"]: [""],
//        image: map["image"]
//       );
//
//   Map<String, dynamic> toJson() => {
//         "name": name,
//
//         // "locations": List<dynamic>.from(locations!.map((x) => x)),
//       };
// }
//
// class Characteristics {
//   Characteristics({
//     this.mainPrey,
//     this.habitat,
//     this.predators,
//     this.averageLitterSize,
//     this.lifestyle,
//     this.favoriteFood,
//     this.slogan,
//     this.color,
//     this.skinType,
//     this.topSpeed,
//     this.lifespan,
//     this.weight,
//     this.length,
//     this.distinctiveFeature,
//     this.prey,
//     this.groupBehavior,
//     this.estimatedPopulationSize,
//     this.biggestThreat,
//     this.mostDistinctiveFeature,
//     this.otherNameS,
//     this.gestationPeriod,
//     this.commonName,
//     this.numberOfSpecies,
//     this.nameOfYoung,
//     this.litterSize,
//     this.location,
//     this.group,
//     this.height,
//     this.ageOfSexualMaturity,
//     this.ageOfWeaning,
//     this.wingspan,
//     this.venomous,
//     this.aggression,
//     this.averageClutchSize,
//   });
//
//   String? mainPrey;
//   String? habitat;
//   String? predators;
//
//   String? averageLitterSize;
//   String? lifestyle;
//   String? favoriteFood;
//   String? type;
//   String? slogan;
//   String? color;
//   String? skinType;
//   String? topSpeed;
//   String? lifespan;
//   String? weight;
//   String? length;
//   String? distinctiveFeature;
//   String? prey;
//   String? groupBehavior;
//   String? estimatedPopulationSize;
//   String? biggestThreat;
//   String? mostDistinctiveFeature;
//   String? otherNameS;
//   String? gestationPeriod;
//   String? commonName;
//   String? numberOfSpecies;
//   String? nameOfYoung;
//   String? litterSize;
//   String? location;
//   String? group;
//   String? height;
//   String? ageOfSexualMaturity;
//   String? ageOfWeaning;
//   String? wingspan;
//   String? venomous;
//   String? aggression;
//   String? averageClutchSize;
//
//   factory Characteristics.fromJson(Map<String, dynamic> json) =>
//       Characteristics(
//         mainPrey: json["main_prey"] == null ? null : json["main_prey"],
//         habitat: json["habitat"] == null ? null : json["habitat"],
//         predators: json["predators"] == null ? null : json["predators"],
//         averageLitterSize: json["average_litter_size"] == null
//             ? null
//             : json["average_litter_size"],
//         lifestyle: json["lifestyle"] == null ? null : json["lifestyle"],
//         favoriteFood:
//             json["favorite_food"] == null ? null : json["favorite_food"],
//         slogan: json["slogan"] == null ? null : json["slogan"],
//         color: json["color"],
//         skinType: json["skin_type"],
//         topSpeed: json["top_speed"] == null ? null : json["top_speed"],
//         lifespan: json["lifespan"] == null ? null : json["lifespan"],
//         weight: json["weight"] == null ? null : json["weight"],
//         length: json["length"] == null ? null : json["length"],
//         distinctiveFeature: json["distinctive_feature"] == null
//             ? null
//             : json["distinctive_feature"],
//         prey: json["prey"] == null ? null : json["prey"],
//         groupBehavior:
//             json["group_behavior"] == null ? null : json["group_behavior"],
//         estimatedPopulationSize: json["estimated_population_size"] == null
//             ? null
//             : json["estimated_population_size"],
//         biggestThreat:
//             json["biggest_threat"] == null ? null : json["biggest_threat"],
//         mostDistinctiveFeature: json["most_distinctive_feature"] == null
//             ? null
//             : json["most_distinctive_feature"],
//         otherNameS:
//             json["other_name(s)"] == null ? null : json["other_name(s)"],
//         gestationPeriod:
//             json["gestation_period"] == null ? null : json["gestation_period"],
//         commonName: json["common_name"] == null ? null : json["common_name"],
//         numberOfSpecies: json["number_of_species"] == null
//             ? null
//             : json["number_of_species"],
//         nameOfYoung:
//             json["name_of_young"] == null ? null : json["name_of_young"],
//         litterSize: json["litter_size"] == null ? null : json["litter_size"],
//         location: json["location"] == null ? null : json["location"],
//         group: json["group"] == null ? null : json["group"],
//         height: json["height"] == null ? null : json["height"],
//         ageOfSexualMaturity: json["age_of_sexual_maturity"] == null
//             ? null
//             : json["age_of_sexual_maturity"],
//         ageOfWeaning:
//             json["age_of_weaning"] == null ? null : json["age_of_weaning"],
//         wingspan: json["wingspan"] == null ? null : json["wingspan"],
//         venomous: json["venomous"] == null ? null : json["venomous"],
//         aggression: json["aggression"] == null ? null : json["aggression"],
//         averageClutchSize: json["average_clutch_size"] == null
//             ? null
//             : json["average_clutch_size"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "main_prey": mainPrey == null ? null : mainPrey,
//         "habitat": habitat == null ? null : habitat,
//         "predators": predators == null ? null : predators,
//         "average_litter_size":
//             averageLitterSize == null ? null : averageLitterSize,
//         "lifestyle": lifestyle == null ? null : lifestyle,
//         "favorite_food": favoriteFood == null ? null : favoriteFood,
//         "type": type == null ? null : type,
//         "slogan": slogan == null ? null : slogan,
//         "color": color,
//         "skin_type": skinType,
//         "top_speed": topSpeed == null ? null : topSpeed,
//         "lifespan": lifespan == null ? null : lifespan,
//         "weight": weight == null ? null : weight,
//         "length": length == null ? null : length,
//         "distinctive_feature":
//             distinctiveFeature == null ? null : distinctiveFeature,
//         "prey": prey == null ? null : prey,
//         "group_behavior": groupBehavior == null ? null : groupBehavior,
//         "estimated_population_size":
//             estimatedPopulationSize == null ? null : estimatedPopulationSize,
//         "biggest_threat": biggestThreat == null ? null : biggestThreat,
//         "most_distinctive_feature":
//             mostDistinctiveFeature == null ? null : mostDistinctiveFeature,
//         "other_name(s)": otherNameS == null ? null : otherNameS,
//         "gestation_period": gestationPeriod == null ? null : gestationPeriod,
//         "common_name": commonName == null ? null : commonName,
//         "number_of_species": numberOfSpecies == null ? null : numberOfSpecies,
//         "name_of_young": nameOfYoung == null ? null : nameOfYoung,
//         "litter_size": litterSize == null ? null : litterSize,
//         "location": location == null ? null : location,
//         "group": group == null ? null : group,
//         "height": height == null ? null : height,
//         "age_of_sexual_maturity":
//             ageOfSexualMaturity == null ? null : ageOfSexualMaturity,
//         "age_of_weaning": ageOfWeaning == null ? null : ageOfWeaning,
//         "wingspan": wingspan == null ? null : wingspan,
//         "venomous": venomous == null ? null : venomous,
//         "aggression": aggression == null ? null : aggression,
//         "average_clutch_size":
//             averageClutchSize == null ? null : averageClutchSize,
//       };
// }
//
// enum Diet { CARNIVORE, HERBIVORE }
//
// final dietValues =
//     EnumValues({"Carnivore": Diet.CARNIVORE, "Herbivore": Diet.HERBIVORE});
//
// class Taxonomy {
//   Taxonomy({
//     this.kingdom,
//     this.phylum,
//     this.taxonomyClass,
//     this.order,
//     this.family,
//     this.genus,
//     this.scientificName,
//   });
//
//   Kingdom? kingdom;
//   Phylum? phylum;
//   String? taxonomyClass;
//   String? order;
//   String? family;
//   String? genus;
//   String? scientificName;
//
//   factory Taxonomy.fromJson(Map<String, dynamic> json) => Taxonomy(
//         kingdom: kingdomValues.map[json["kingdom"]],
//         phylum: phylumValues.map[json["phylum"]],
//         taxonomyClass: json["class"],
//         order: json["order"],
//         family: json["family"],
//         genus: json["genus"] == null ? null : json["genus"],
//         scientificName:
//             json["scientific_name"] == null ? null : json["scientific_name"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "kingdom": kingdomValues.reverse[kingdom],
//         "phylum": phylumValues.reverse[phylum],
//         "class": taxonomyClass,
//         "order": order,
//         "family": family,
//         "genus": genus == null ? null : genus,
//         "scientific_name": scientificName == null ? null : scientificName,
//       };
// }
//
// enum Kingdom { ANIMALIA }
//
// final kingdomValues = EnumValues({"Animalia": Kingdom.ANIMALIA});
//
// enum Phylum { CHORDATA, ARTHROPODA }
//
// final phylumValues =
//     EnumValues({"Arthropoda": Phylum.ARTHROPODA, "Chordata": Phylum.CHORDATA});
//
// class EnumValues<T> {
//   late Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }

import 'dart:convert';

List<Animal> animalFromJson(String str) =>
    List<Animal>.from(json.decode(str).map((x) => Animal.database(data: x)));

List<Animal> animalJson(String str) =>
    List<Animal>.from(json.decode(str).map((x) => Animal.fromMap(data: x)));

class Animal {
  String? name;
  String? locations;
  String? color;
  String? skinType;
  String? length;
  String? weight;

  String? topSpeed;
  String? image;

  Animal({
    required this.name,
    required this.color,
    required this.skinType,
    required this.topSpeed,
    required this.length,
    required this.weight,
    this.image,
  });

  factory Animal.fromMap({required Map data}) {
    return Animal(
      name: data["name"],
      topSpeed: data["characteristics"]["top_speed"] ?? "25 km/h",
      skinType: data["characteristics"]["skin_type"] ?? "25 km/h",
      color: data["characteristics"]["color"] ?? "white",
      length: data["characteristics"]["length"] ?? "22",
      weight: data["characteristics"]["weight"] ?? "22",
    );
  }

  factory Animal.database({required Map data}) {
    return Animal(
      name: data["name"],
      image: data["image"],
      topSpeed: data["top_speed"],
      skinType: data["skin_type"],
      color: data["color"],
      length: data["length"],
      weight: data["weight"],
    );
  }
}
