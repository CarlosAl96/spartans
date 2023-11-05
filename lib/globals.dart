class APIREST {
  static const String baseURL = 'https://api.spartanscr.com/api/v1/';
  static const authURL = baseURL + 'auth/login/';
  static const usersURL = baseURL + 'users/';
  static const categoryURL = baseURL + 'category/';
  static const challengeURL = baseURL + 'challenge/';
  static const recoveryPasswordURL = baseURL + 'auth/forgot-password/';
  static const recoveryPasswordSendURL = baseURL + 'auth/change-password/';
}

Map<String, dynamic> genders = {
  'masculino': 'male',
  'femenino': 'female',
  'otro': 'other',
};
