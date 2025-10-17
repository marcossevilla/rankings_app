import 'package:dart_mappable/dart_mappable.dart';

part 'ranking_request.mapper.dart';

@MappableClass()
class RankingRequest with RankingRequestMappable {
  const RankingRequest({
    required this.category,
    this.maxAmount = 10,
  });

  final String category;
  final int maxAmount;
}
