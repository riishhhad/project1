part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}
class MovieblocLoading extends MovieState {}
class MovieblocLoaded extends MovieState {}
class MovieblocError extends MovieState{}