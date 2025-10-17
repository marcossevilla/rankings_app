part of 'rankings_bloc.dart';

enum RankingsStatus { initial, requesting, success, failure }

@MappableClass()
class RankingsState with RankingsStateMappable {
  const RankingsState({
    this.status = RankingsStatus.initial,
    this.request = const RankingRequest(category: ''),
    this.rankings = const [],
  });

  final RankingsStatus status;
  final RankingRequest request;
  final List<Ranking> rankings;
}
