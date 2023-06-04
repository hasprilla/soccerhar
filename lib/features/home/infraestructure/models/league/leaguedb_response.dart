import 'league_leaguedb.dart';

class LeagueResponse {
  final List<LeagueLeagueDb> leagues;

  LeagueResponse({
    required this.leagues,
  });

  factory LeagueResponse.fromJson(Map<String, dynamic> json) => LeagueResponse(
        leagues: List<LeagueLeagueDb>.from(
            json["leagues"].map((x) => LeagueLeagueDb.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "leagues": List<dynamic>.from(leagues.map((x) => x.toJson())),
      };
}
