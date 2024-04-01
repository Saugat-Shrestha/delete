part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeFetchingErrorState extends HomeState {}

class HomeFetchingLoadingState extends HomeState {}

class HomeSuccessfulState extends HomeState {
  final List<HomeDataUiModel> posts;
  HomeSuccessfulState({required this.posts});
}
