import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../infraestructure/datasources/league/leaguedb_datasource.dart';
import '../../../infraestructure/repositories/league/league_repository_impl.dart';

final leagueRepositoryProvider = Provider((ref) {
  return LeagueRepositoryImpl(LeagueDbDatasource());
});
