class ListResponseModel {
  Map<String, dynamic>? links;
  int? total;
  int? page;
  int? pageSize;
  List<Map<String, dynamic>>? results;

  ListResponseModel(
      {this.links, this.total, this.page, this.pageSize, this.results});
  factory ListResponseModel.fromJson(Map<String, dynamic> json) {
    return ListResponseModel(
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
