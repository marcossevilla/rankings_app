import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rankings_app/app/app.dart';
import 'package:rankings_app/rankings/rankings.dart';
import 'package:rankings_repository/rankings_repository.dart';

class _MockRankingsRepository extends Mock implements RankingsRepository {}

void main() {
  group(App, () {
    late RankingsRepository rankingsRepository;

    setUp(() {
      rankingsRepository = _MockRankingsRepository();
    });

    testWidgets('renders $RankingsPage', (tester) async {
      await tester.pumpWidget(
        App(rankingsRepository: rankingsRepository),
      );
      expect(find.byType(RankingsPage), findsOneWidget);
    });
  });
}
