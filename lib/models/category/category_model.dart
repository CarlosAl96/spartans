class CategoryModel {
  String id;
  String name;

  CategoryModel({required this.id, required this.name});
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }
}
