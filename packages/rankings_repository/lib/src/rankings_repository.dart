import 'dart:convert';

import 'package:firebase_ai/firebase_ai.dart';
import 'package:rankings_repository/rankings_repository.dart';

enum GeminiModel {
  gemini25Pro('gemini-2.5-pro'),
  gemini25Flash('gemini-2.5-flash'),
  gemini25FlashLite('gemini-2.5-flash-lite');

  const GeminiModel(this.name);

  final String name;
}

class RankingsRepository {
  RankingsRepository({GenerationConfig? generationConfig})
    : _model = FirebaseAI.googleAI().generativeModel(
        model: GeminiModel.gemini25FlashLite.name,
        generationConfig: generationConfig ?? GenerationConfig(),
      );

  final GenerativeModel _model;

  Future<List<Ranking>> generateRankings({
    required RankingRequest request,
  }) async {
    final response = await _model.generateContent([
      Content.text(_basePrompt),
      Content.text(_getRequest(request)),
    ]);

    final data = json.decode(response.text ?? '[]') as List<dynamic>;
    final convertedList = data.cast<Map<String, dynamic>>();
    final rankings = convertedList.map(Ranking.fromMap).toList();

    return rankings;
  }

  String _getRequest(RankingRequest request) {
    return '''
Here is the user's query:

Generate a list of ${request.maxAmount} items ranked by relevance to the user query.
Category: ${request.category}.
  ''';
  }
}

const _basePrompt = '''
You are a ranking expert. 
You are given a category of items and a user query.
You must return a list of items ranked by relevance to the user query.
Return only the list of items, do not add any additional text like markdown, 
this should be a JSON array of objects as if you were calling a JSON API.
The list should be ordered from most relevant to least relevant.
The list should be a JSON array of objects, the format is the following example:

[
  {
    "rank": 1,
    "name": "Item 1",
    "description": "Item 1 is ranked first because..."
  },
  {
    "rank": 2,
    "name": "Item 2",
    "description": "Item 2 is ranked second because..."
  },
  {
    "rank": 3,
    "name": "Item 3",
    "description": "Item 3 is ranked third because..."
  }
]
''';
