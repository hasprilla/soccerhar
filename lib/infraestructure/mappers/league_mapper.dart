import '../../domain/entities/league.dart';
import '../models/league_leaguedb.dart';

class LeagueMapper {
  static League leagueDBToEntity(LeagueLeagueDb league) => League(
        idLeague: league.idLeague,
        strLeague: league.strLeague,
        strSport: league.strSport,
      );
}
