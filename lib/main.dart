import 'package:counter_with_cubit/cubit/counter_number_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('di rebuild ulang');
    return BlocProvider(
      create: (context) => CounterNumberCubit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Belajar Cubit'),
            centerTitle: true,
            systemOverlayStyle:
                const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          ),
          body: BlocBuilder<CounterNumberCubit, CounterNumberState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${state.number}',
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.grey,
                        child: IconButton(
                          onPressed: () {
                            context.read<CounterNumberCubit>().increment();
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        child: IconButton(
                          onPressed: () {
                            context.read<CounterNumberCubit>().decrement();
                          },
                          icon: const Icon(Icons.remove),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
