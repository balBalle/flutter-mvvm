import '../services/omdb_service.dart';
import '/models/movie_model.dart';
import '/models/movie_detail_model.dart';

class MovieRepository {
  final OmdbService _omdbService;

  MovieRepository({
    required OmdbService omdbService,
  }) : _omdbService = omdbService;

  // --- list film berdasarkan query ---
  Future<
    List<
      Movie
    >
  >
  fetchMovies(
    String query,
  ) async {
    try {
      final rawData = await _omdbService.getMovies(
        query,
      );

      return rawData
          .map(
            (
              json,
            ) => Movie.fromJson(
              json,
            ),
          )
          .toList();
    } catch (
      e
    ) {
      rethrow;
    }
  }

  // --- detail 1 film berdasarkan imdbID ---
  Future<
    MovieDetail
  >
  getMovieDetail(
    String id,
  ) async {
    try {
      final json = await _omdbService.getMovieDetail(
        id,
      );
      return MovieDetail.fromJson(
        json,
      );
    } catch (
      e
    ) {
      rethrow;
    }
  }
}
