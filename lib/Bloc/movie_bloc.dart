import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/Api/movieapi.dart';
import '../Repository/ModelClass/MovieModel.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  late  MovieModel animeModel;
  MovieApi movieApi= MovieApi();
  MovieBloc() : super(MovieInitial()) {
    on<FetchMovieEvent>((event, emit) async{
      emit(MovieblocLoading());
      try{
        animeModel=await movieApi.getAnime();
        emit(MovieblocLoaded());


      }
          catch(a){
        emit(MovieblocError());
          }

      // TODO: implement event handler
    });
  }
}
