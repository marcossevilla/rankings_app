part of 'rankings_bloc.dart';

enum RankingAmountAction { decrement, increment }

sealed class RankingsEvent {
  const RankingsEvent();
}

final class RankingsInputChanged extends RankingsEvent {
  const RankingsInputChanged(this.input);

  final String input;
}

final class RankingsMaxAmountChanged extends RankingsEvent {
  RankingsMaxAmountChanged.increment() : action = RankingAmountAction.increment;
  RankingsMaxAmountChanged.decrement() : action = RankingAmountAction.decrement;

  final RankingAmountAction action;
}

final class RankingsSubmitted extends RankingsEvent {
  const RankingsSubmitted();
}

final class RankingsRestarted extends RankingsEvent {
  const RankingsRestarted();
}
