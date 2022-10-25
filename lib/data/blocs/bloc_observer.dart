import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  Logger log = Logger();

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log.i('${bloc.runtimeType} $event',"on Event");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log.i('${bloc.runtimeType} $error $stackTrace',"on Error");
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log.i('${bloc.runtimeType} $change',"on change");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log.i('${bloc.runtimeType} $transition',"on change");
  }
}
