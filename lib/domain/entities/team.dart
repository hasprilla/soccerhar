class Team {
  final String idTeam;
  final String strTeam;
  final String strSport;
  final String? strLeagueAlternate;
  final String strCountry;
  final String strTeamBadge;
  final String strTeamJersey;
  final String strTeamLogo;
  final String strStadium;
  final String intFormedYear;
  Team({
    required this.idTeam,
    required this.strTeam,
    required this.strSport,
    this.strLeagueAlternate,
    required this.strCountry,
    required this.strTeamBadge,
    required this.strTeamJersey,
    required this.strTeamLogo,
    required this.strStadium,
    required this.intFormedYear,
  });
}
