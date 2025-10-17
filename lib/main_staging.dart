import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:rankings_app/app/app.dart';
import 'package:rankings_app/bootstrap.dart';
import 'package:rankings_app/firebase_options.dart';
import 'package:rankings_repository/rankings_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAuth.instance.signInAnonymously();

  final rankingsRepository = RankingsRepository();

  await bootstrap(() => App(rankingsRepository: rankingsRepository));
}
