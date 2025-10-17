import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankings_app/l10n/l10n.dart';
import 'package:rankings_app/rankings/rankings.dart';
import 'package:rankings_repository/rankings_repository.dart';

class App extends StatelessWidget {
  const App({
    required RankingsRepository rankingsRepository,
    super.key,
  }) : _rankingsRepository = rankingsRepository;

  final RankingsRepository _rankingsRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _rankingsRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const RankingsPage(),
    );
  }
}
