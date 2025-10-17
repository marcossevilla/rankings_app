import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:rankings_repository/rankings_repository.dart';

part 'rankings_event.dart';
part 'rankings_state.dart';
part 'rankings_bloc.mapper.dart';

class RankingsBloc extends Bloc<RankingsEvent, RankingsState> {
  RankingsBloc({
    required RankingsRepository rankingsRepository,
  }) : _rankingsRepository = rankingsRepository,
       super(const RankingsState()) {
    on<RankingsInputChanged>(_onInputChanged);
    on<RankingsMaxAmountChanged>(_onMaxAmountChanged);
    on<RankingsSubmitted>(_onRankingsSubmitted);
    on<RankingsRestarted>(_onRankingsRestarted);
  }

  final RankingsRepository _rankingsRepository;

  void _onInputChanged(
    RankingsInputChanged event,
    Emitter<RankingsState> emit,
  ) {
    emit(
      state.copyWith(
        request: state.request.copyWith(
          category: event.input,
        ),
      ),
    );
  }

  void _onMaxAmountChanged(
    RankingsMaxAmountChanged event,
    Emitter<RankingsState> emit,
  ) {
    emit(
      state.copyWith(
        request: state.request.copyWith(
          maxAmount: switch (event.action) {
            RankingAmountAction.increment => state.request.maxAmount + 1,
            RankingAmountAction.decrement => state.request.maxAmount - 1,
          },
        ),
      ),
    );
  }

  Future<void> _onRankingsSubmitted(
    RankingsSubmitted event,
    Emitter<RankingsState> emit,
  ) async {
    emit(state.copyWith(status: RankingsStatus.requesting));
    try {
      final rankings = await _rankingsRepository.generateRankings(
        request: state.request,
      );
      emit(state.copyWith(status: RankingsStatus.success, rankings: rankings));
    } on Exception {
      emit(state.copyWith(status: RankingsStatus.failure));
    }
  }

  void _onRankingsRestarted(
    RankingsRestarted event,
    Emitter<RankingsState> emit,
  ) => emit(const RankingsState());
}
