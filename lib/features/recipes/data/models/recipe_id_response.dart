class RecipeWithIdResponse {
  String? status;
  Recipes? recipes;

  RecipeWithIdResponse({this.status, this.recipes});

  RecipeWithIdResponse.fromJson(Map<String, dynamic> json) {
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
  int? stepsNumber;
  List<String>? ingredients;
  List<String>? steps;

  Data(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.time,
      this.stepsNumber,
      this.ingredients,
      this.steps});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    time = json['time'];
    stepsNumber = json['stepsNumber'];
    ingredients = json['ingredients'].cast<String>();
    steps = json['steps'].cast<String>();
  }
}
