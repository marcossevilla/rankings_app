import 'package:dart_mappable/dart_mappable.dart';

part 'ranking.mapper.dart';

@MappableClass()
class Ranking with RankingMappable {
  const Ranking({
    required this.rank,
    required this.name,
    required this.description,
  });

  static const fromMap = RankingMapper.fromMap;
  static const fromJson = RankingMapper.fromJson;

  final int rank;
  final String name;
  final String description;
}
