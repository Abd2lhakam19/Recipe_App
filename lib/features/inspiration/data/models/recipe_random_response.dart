class RecipeRandomResponse {
  String? status;
  Recipes? recipes;

  RecipeRandomResponse({this.status, this.recipes});

  RecipeRandomResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    recipes =
        json['recipes'] != null ? Recipes.fromJson(json['recipes']) : null;
  }
}

class Recipes {
  Data? data;

  Recipes({this.data});

  Recipes.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
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
