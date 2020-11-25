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

  Mortar mortar = Mortar(
    name: "My Mortar",
    description: "Look at my mortar, my mortar is amazing.",
    recipe: "Shaken, not stirred.",
    image: "https://previews.123rf.com/images/ieang/ieang1709/ieang170900020/86360123-texture-of-ready-mixed-concrete-cement-mortar-for-building-floor-house-.jpg",
  );
}