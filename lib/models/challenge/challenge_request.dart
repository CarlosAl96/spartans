class ChallengeRequest {
  String user = '';
  String dateOfChallenge = '';
  String hourOfChallenge = '';
  ChallengeRequest(
      {this.user = '', this.hourOfChallenge = '', this.dateOfChallenge = ''});
  Map<String, dynamic> toJson() => {
        'user': this.user,
        'date_of_challenge': this.dateOfChallenge,
        'hour_of_challenge': this.hourOfChallenge
      };
}
