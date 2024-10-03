import 'package:basketball_counter/cubit/states.dart';
import 'package:basketball_counter/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

void main() {
  runApp(const pointsCounter());
}

class pointsCounter extends StatelessWidget {
  const pointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Points Counter',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        CustomButton(
                          txt: 'Add 1 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'A', counter: 1);
                          },
                        ),
                        CustomButton(
                          txt: 'Add 2 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'A', counter: 2);
                          },
                        ),
                        CustomButton(
                          txt: 'Add 3 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'A', counter: 3);
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: const VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        CustomButton(
                          txt: 'Add 1 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'B', counter: 1);
                          },
                        ),
                        CustomButton(
                          txt: 'Add 2 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'B', counter: 2);
                          },
                        ),
                        CustomButton(
                          txt: 'Add 3 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncreament(team: 'B', counter: 3);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                txt: 'Reset',
              )
            ],
          ),
        );
      },
    );
  }
}
