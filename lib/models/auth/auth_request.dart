class AuthRequest {
  String email = '';
  String password = '';
  AuthRequest({this.email = '', this.password = ''});
  Map<String, dynamic> toJson() =>
      {'email': this.email, 'password': this.password};
}
