import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/bloc/counter_app_bloc.dart';

import '../styles/textsyles/textstyles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterAppBloc, CounterAppState>(
              builder: (context, state) {
                return Text(
                  'Counter value: ${state.counterValue}',
                  style: medium,
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      context.read<CounterAppBloc>().add(IncrementEvent());
                    },
                    child: const Text('Increment',style: medium,)),
                TextButton(
                    onPressed: () {
                      context.read<CounterAppBloc>().add(DecrementEvent());
                    },
                    child: const Text('Decrement',style: medium,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
