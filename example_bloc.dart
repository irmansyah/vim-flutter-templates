import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'chair_event.dart';
part 'chair_state.dart';

class TODO_BLOC extends Bloc<ChairEvent, ChairState> {
  ChairBloc() : super(ChairInitial());

  @override
  Stream<ChairState> mapEventToState(
    ChairEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
