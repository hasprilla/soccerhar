class League {
  final String idLeague;
  final String strLeague;
  final String strSport;
  final String? strLeagueAlternate;

  League({
    required this.idLeague,
    required this.strLeague,
    required this.strSport,
    this.strLeagueAlternate,
  });
}
