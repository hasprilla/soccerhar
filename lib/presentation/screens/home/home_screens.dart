import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/constants/environment.dart';
import '../../providers/initial_loading_provider.dart';
import '../../providers/leagues/leagues_providers.dart';
import 'widgets/custom_listview_horizontal.dart';
import 'widgets/custom_listview_vertical.dart';

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
    final initialLoading = ref.watch(initialLoadingProvider);
    return Scaffold(
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
                return ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height),
                  child: Visibility(
                    child: initialLoading
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(strokeWidth: 1)
                            ],
                          )
                        : Column(
                            children: [
                              CustomListviewHorizontal(
                                leagues: nowLeagues,
                              ),
                              const CustomListviewVertical(),
                            ],
                          ),
                  ),
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
