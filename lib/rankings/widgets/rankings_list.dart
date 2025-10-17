import 'package:flutter/material.dart';
import 'package:rankings_repository/rankings_repository.dart';

class RankingsList extends StatelessWidget {
  const RankingsList({
    required this.rankings,
    super.key,
  });

  final List<Ranking> rankings;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      itemCount: rankings.length,
      itemBuilder: (context, index) {
        final ranking = rankings[index];
        return ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          leading: ranking.leading,
          title: Text(ranking.name),
          subtitle: Text(ranking.description),
        );
      },
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Divider(
          thickness: 2,
          color: theme.colorScheme.primaryContainer,
        ),
      ),
    );
  }
}

class TrophyIcon extends StatelessWidget {
  const TrophyIcon({
    required this.rank,
    required this.color,
    super.key,
  });

  final int rank;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox.square(
      dimension: 64,
      child: Stack(
        children: [
          Icon(Icons.emoji_events, color: color, size: 64),
          Center(
            child: Text(
              rank.toString(),
              style: textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}

extension on Ranking {
  Widget? get leading => switch (rank) {
    1 => TrophyIcon(rank: 1, color: Colors.yellow.shade700),
    2 => const TrophyIcon(rank: 2, color: Colors.grey),
    3 => const TrophyIcon(rank: 3, color: Colors.orange),
    _ => SizedBox.square(
      dimension: 64,
      child: Center(child: Text(rank.toString())),
    ),
  };
}
