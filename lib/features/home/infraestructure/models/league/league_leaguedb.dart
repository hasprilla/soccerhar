class LeagueLeagueDb {
  final String idLeague;
  final String strLeague;
  final String strSport;
  final String? strLeagueAlternate;

  LeagueLeagueDb({
    required this.idLeague,
    required this.strLeague,
    required this.strSport,
    this.strLeagueAlternate,
  });

  factory LeagueLeagueDb.fromJson(Map<String, dynamic> json) => LeagueLeagueDb(
        idLeague: json["idLeague"],
        strLeague: json["strLeague"],
        strSport: json["strSport"],
        strLeagueAlternate: json["strLeagueAlternate"],
      );

  Map<String, dynamic> toJson() => {
        "idLeague": idLeague,
        "strLeague": strLeague,
        "strSport": strSport,
        "strLeagueAlternate": strLeagueAlternate,
      };
}
