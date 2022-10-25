import 'package:bloc_sample/data/blocs/blocs_import.dart';
import 'package:bloc_sample/ui/home_screen.dart';
import 'package:flutter/material.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(const BlocSample());
}
class BlocSample extends StatelessWidget {
  const BlocSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => CounterBloc(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

