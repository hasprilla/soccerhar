import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soccerhar/presentation/screens/home/widgets/custom_listview_vertical.dart';

import '../../../config/constants/environment.dart';
import '../../providers/leagues/leagues_providers.dart';
import 'widgets/custom_listview_horizontal.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(nowLeaguesProvider.notifier).loadPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowLeagues = ref.watch(nowLeaguesProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.sports_soccer),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(Environment.appName),
              centerTitle: false,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    Visibility(
                      child: nowLeagues.isEmpty
                          ? const CircularProgressIndicator(strokeWidth: 1)
                          : CustomListviewHorizontal(
                              leagues: nowLeagues,
                            ),
                    ),
                    CustomListviewVertical()
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
