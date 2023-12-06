import 'package:basketball_point_counter_app/cubits/counter_cubit.dart';
import 'package:basketball_point_counter_app/cubits/counter_state_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Points Counter'),
              backgroundColor: Colors.orange,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 42),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                            style: const TextStyle(fontSize: 150),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'A', buttonNumber: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'A', buttonNumber: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'A', buttonNumber: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 550,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 50,
                        endIndent: 50,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 42),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                            style: const TextStyle(fontSize: 150),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'B', buttonNumber: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'B', buttonNumber: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'B', buttonNumber: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetCounter();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
