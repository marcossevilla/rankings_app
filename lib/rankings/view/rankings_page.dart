import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final state = context.watch<RankingsBloc>().state;

    return RefreshIndicator.adaptive(
      onRefresh: () async {
        context.read<RankingsBloc>().add(const RankingsSubmitted());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Rankings'),
        ),
        body: Center(
          child: switch (state.status) {
            RankingsStatus.initial => RankingsForm(
              canSubmit: state.request.category.isNotEmpty,
            ),
            RankingsStatus.requesting =>
              const CircularProgressIndicator.adaptive(),
            RankingsStatus.success => RankingsList(rankings: state.rankings),
            RankingsStatus.failure => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'AI can be a bit lazy sometimes, could you generate again?',
                textAlign: TextAlign.center,
              ),
            ),
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<RankingsBloc>().add(
            const RankingsSubmitted(),
          ),
          child: const Icon(Icons.question_answer),
        ),
      ),
    );
  }
}
