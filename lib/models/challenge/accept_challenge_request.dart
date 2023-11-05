class AcceptChallengeRequest {
  bool isAccepted;
  String challengeID = '';
  AcceptChallengeRequest({
    this.isAccepted = false,
    this.challengeID = '',
  });
  Map<String, dynamic> toJson() => {
        'isAccepted': this.isAccepted,
        'challengeID': this.challengeID,
      };
}
