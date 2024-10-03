import 'package:basketball_counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  int teamAPoints = 0;

  int teamBPoints = 0;
  CounterCubit() : super(CounterAIncrementState());
  void TeamIncreament({required String team, required int counter}){
     if (team == 'A')
       {
         teamAPoints+=counter;
        emit(CounterAIncrementState());
       }
     else
       {
         teamBPoints+=counter;
         emit(CounterBIncrementState());
       }

  }
  void reset()
  {
    teamAPoints =0 ;
    teamBPoints =0 ;
    emit(CounterResetState());
  }

}