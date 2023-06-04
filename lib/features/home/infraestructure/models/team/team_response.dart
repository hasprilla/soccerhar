class TeamsResponse {
  final List<Map<String, String?>> teams;

  TeamsResponse({
    required this.teams,
  });

  factory TeamsResponse.fromJson(Map<String, dynamic> json) => TeamsResponse(
        teams: List<Map<String, String?>>.from(json["teams"].map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
      );

  Map<String, dynamic> toJson() => {
        "teams": List<dynamic>.from(teams.map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      };
}
