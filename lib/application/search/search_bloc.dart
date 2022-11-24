import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/search/search_service.dart';

import '../../domain/downloads/models/downloadsModel.dart';
import '../../domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IdownloadsRepo _downloadsService;
  final SearchService _searchService;

  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    //
    //

    on<Intitialize>((event, emit) {
      _downloadsService.getDownloadsImages();
    });

    on<searchMovie>((event, emit) {
      _searchService.searchMovies(movieQuery: event.movieQuery);
    });
  }
}
