import 'package:get/get.dart';

import '../data/repositories/movie_repository.dart';
import '/models/movie_detail_model.dart';

class MovieDetailController
    extends
        GetxController {
  final MovieRepository _repository;

  MovieDetailController({
    required MovieRepository repository,
  }) : _repository = repository;

  // state
  var isLoading = false.obs;
  var movieDetail =
      Rxn<
        MovieDetail
      >();
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();

    final String imdbID = Get.arguments;
    fetchDetail(
      imdbID,
    );
  }

  void fetchDetail(
    String id,
  ) async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final result = await _repository.getMovieDetail(
        id,
      );
      movieDetail.value = result;
    } catch (
      e
    ) {
      errorMessage.value = 'Terjadi kesalahan: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
