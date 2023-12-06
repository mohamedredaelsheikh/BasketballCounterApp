import 'package:basketball_point_counter_app/cubits/counter_cubit.dart';
import 'package:basketball_point_counter_app/views/homeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketBallPointCounterAPP());
}

class BasketBallPointCounterAPP extends StatelessWidget {
  const BasketBallPointCounterAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
