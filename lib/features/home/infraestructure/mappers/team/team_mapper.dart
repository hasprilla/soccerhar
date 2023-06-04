import '../../../domain/entities/team/team.dart';

class TeamMapper {
  static jsonToEntity(Map<String, String?> json) {
    return Team(
      idTeam: json['idTeam'] ?? '',
      strTeam: json['strTeam'] ?? '',
      strTeamLogo: json['strTeamLogo'] ??
          'https://cdn.iconscout.com/icon/premium/png-256-thumb/no-data-found-1965030-1662565.png',
      strStadium: json['strStadium'] ?? '',
      intFormedYear: json['intFormedYear'] ?? '',
    );
  }
}
