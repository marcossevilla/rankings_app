import 'package:rankings_repository/rankings_repository.dart';
import 'package:test/test.dart';

void main() {
  group(RankingsRepository, () {
    test('can be instantiated', () {
      expect(RankingsRepository(), isNotNull);
    });
  });
}
