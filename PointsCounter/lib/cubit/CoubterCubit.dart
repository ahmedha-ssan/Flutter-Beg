import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello/cubit/CounterState.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterTeamAState());
  int FirstTeamA = 0;
  int FirstTeamB = 0;
  void TeamIncrement({required String Team, required int buttonNumber}) {
    if (Team == 'A') {
      FirstTeamA += buttonNumber;
      emit(CounterTeamAState());
    } else {
      FirstTeamB += buttonNumber;
      emit(CounterTeamBState());
    }
  }

  //void TeamBIncrement(int buttonNumber) {}
}
