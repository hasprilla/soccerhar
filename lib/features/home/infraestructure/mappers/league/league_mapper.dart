import '../../../domain/entities/league/league.dart';
import '../../models/league/league_leaguedb.dart';

class LeagueMapper {
  static League leagueDBToEntity(LeagueLeagueDb league) => League(
        idLeague: league.idLeague,
        strLeague: league.strLeague,
        strSport: league.strSport,
      );
}
