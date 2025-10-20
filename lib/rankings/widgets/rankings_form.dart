import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankings_app/l10n/l10n.dart';
import 'package:rankings_app/rankings/rankings.dart';

class RankingsForm extends StatelessWidget {
  const RankingsForm({
    required this.canSubmit,
    super.key,
  });

  final bool canSubmit;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: theme.colorScheme.primaryContainer,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              hintText: l10n.rankingsFormCategoryHint,
            ),
            onChanged: (input) => context.read<RankingsBloc>().add(
              RankingsInputChanged(input),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton.filledTonal(
                icon: const Icon(Icons.add),
                onPressed: () => context.read<RankingsBloc>().add(
                  RankingsMaxAmountChanged.increment(),
                ),
              ),
              BlocSelector<RankingsBloc, RankingsState, int>(
                selector: (state) => state.request.maxAmount,
                builder: (context, state) => Text(
                  state.toString(),
                  style: textTheme.titleLarge,
                ),
              ),
              IconButton.filledTonal(
                icon: const Icon(Icons.remove),
                onPressed: () => context.read<RankingsBloc>().add(
                  RankingsMaxAmountChanged.decrement(),
                ),
              ),
            ],
          ),
          FilledButton.tonalIcon(
            iconAlignment: IconAlignment.end,
            icon: const Icon(Icons.send),
            label: Text(l10n.rankingsFormSubmitButton),
            onPressed: () => context.read<RankingsBloc>().add(
              const RankingsSubmitted(),
            ),
          ),
        ],
      ),
    );
  }
}
