

import 'package:get_it/get_it.dart';
import 'package:marcador_de_truco/truco/mobx/truco.store.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // Settings
  sl.registerLazySingleton<TrucoStore>(() => TrucoStore());

}