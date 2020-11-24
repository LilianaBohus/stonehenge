class Mortar {
  String name;
  String description;
  String recipe;
  String image;

  Mortar({this.name, this.description, this.recipe, this.image});

  factory Mortar.fromJson(Map<String, dynamic> json) {
    return Mortar(
      name: json["name"],
      description: json["descirption"],
      recipe: json["recipe"],
      image: json["image"]
    );
  }

  Mortar mortarDemo = Mortar(
    name: "My Mortar",
    description: "Look at my mortar, my mortar is amazing.",
    recipe: "Shaken, not stirred.",
    image: "https://www.123rf.com/photo_86360123_texture-of-ready-mixed-concrete-cement-mortar-for-building-floor-house-.html",
  );
}