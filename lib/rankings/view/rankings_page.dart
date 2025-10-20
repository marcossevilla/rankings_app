import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankings_app/l10n/l10n.dart';
import 'package:rankings_app/rankings/rankings.dart';
import 'package:rankings_repository/rankings_repository.dart';

class RankingsPage extends StatelessWidget {
  const RankingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RankingsBloc(
        rankingsRepository: context.read<RankingsRepository>(),
      ),
      child: const RankingsView(),
    );
  }
}

class RankingsView extends StatelessWidget {
  const RankingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<RankingsBloc>().state;

    final showFloatingActionButton =
        state.status != RankingsStatus.initial &&
        state.status != RankingsStatus.requesting;

    return RefreshIndicator.adaptive(
      onRefresh: () async {
        context.read<RankingsBloc>().add(const RankingsSubmitted());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.rankingsAppBarTitle),
        ),
        body: Center(
          child: switch (state.status) {
            RankingsStatus.initial => RankingsForm(
              canSubmit: state.request.category.isNotEmpty,
            ),
            RankingsStatus.requesting =>
              const CircularProgressIndicator.adaptive(),
            RankingsStatus.success => RankingsList(rankings: state.rankings),
            RankingsStatus.failure => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                l10n.rankingsErrorText,
                textAlign: TextAlign.center,
              ),
            ),
          },
        ),
        floatingActionButton: showFloatingActionButton
            ? FloatingActionButton(
                onPressed: () => context.read<RankingsBloc>().add(
                  const RankingsRestarted(),
                ),
                child: const Icon(Icons.question_answer),
              )
            : null,
      ),
    );
  }
}
