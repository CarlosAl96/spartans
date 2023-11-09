class CategoryResponseModel {
  Map<String, dynamic>? links;
  int? total;
  int? page;
  int? pageSize;
  List<Map<String, dynamic>>? results;

  CategoryResponseModel(
      {this.links, this.total, this.page, this.pageSize, this.results});
  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) {
    return CategoryResponseModel(
      links: json['links'] as Map<String, dynamic>,
      total: json['total'] as int,
      page: json['page'] as int,
      pageSize: json['page_size'] as int,
      results: json['results'].map<Map<String, dynamic>>((e) {
        print(e);
        return e as Map<String, dynamic>;
      }).toList(),
    );
  }
}
