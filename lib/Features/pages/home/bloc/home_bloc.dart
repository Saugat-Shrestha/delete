import 'dart:async';


import 'package:delete/Features/pages/home/models/Home_repo.dart';
import 'package:delete/Features/pages/home/models/home_ui_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitalFetchEvent>(homeInitalFetchEvent);
  }

  Future<FutureOr<void>> homeInitalFetchEvent(
      HomeInitalFetchEvent event, Emitter<HomeState> emit) async {
    emit(HomeFetchingErrorState());
    List<HomeDataUiModel> posts = await HomeRepo.fetchEvent();
    emit(HomeSuccessfulState(posts: posts));
  }
}
