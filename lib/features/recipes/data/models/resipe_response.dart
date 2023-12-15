class RecipeResponse {
  String? status;
  int? results;
  Recipes? recipes;

  RecipeResponse({this.status, this.results, this.recipes});

  RecipeResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    results = json['results'];
    recipes =
        json['recipes'] != null ? Recipes.fromJson(json['recipes']) : null;
  }
}

class Recipes {
  List<Data>? data;

  Recipes({this.data});

  Recipes.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  String? id;
  String? name;
  String? description;
  String? image;
  int? time;
  int? steps;

  Data(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.time,
      this.steps});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    time = json['time'];
    steps = json['steps'];
  }
}
