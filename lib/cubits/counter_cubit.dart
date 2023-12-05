import 'package:basketball_point_counter_app/cubits/counter_state_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);

  int teamApoints = 0;

  int teamBpoints = 0;

  void incrementTeam({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(IncrementTeamAState());
    } else {
      teamBpoints += buttonNumber;
      emit(IncrementTeamBState());
    }
  }
}
