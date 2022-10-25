import 'package:flutter/material.dart';
import '../data/blocs/blocs_import.dart';
import '../data/blocs/counter_bloc.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Sample')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocListener<CounterBloc, CounterState>(
              listener: (context, state) {

              },
              child: Center(child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text("Counter Value : ${state.counterValue}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w400));
                },
              )),
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ElevatedButton.icon(
                            onPressed: () => context
                                .read<CounterBloc>()
                                .add(CounterDecrementEvent()),
                            icon: const Icon(Icons.remove),
                            label: const Text("Decrease"))),
                    const SizedBox(width: 20),
                    Expanded(
                        child: ElevatedButton.icon(
                            onPressed: () => context
                                .read<CounterBloc>()
                                .add(CounterIncrementEvent()),
                            icon: const Icon(Icons.add),
                            label: const Text("Increase"))),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
