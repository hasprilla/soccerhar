import 'package:soccerhar/domain/entities/team.dart';

class TeamMapper {
  static jsonToEntity(Map<String, String?> json) {
    return Team(
      idTeam: json['idTeam'] ?? '',
      strTeam: json['strTeam'] ?? '',
      strSport: json['strSport'] ?? '',
      strCountry: json['strCountry'] ?? '',
      strTeamBadge: json['strTeamBadge'] ?? '',
      strTeamJersey: json['strTeamJersey'] ?? '',
      strTeamLogo: json['strTeamLogo'] ?? '',
      strStadium: json['strStadium'] ?? '',
      intFormedYear: json['intFormedYear'] ?? '',
    );
  }
}
