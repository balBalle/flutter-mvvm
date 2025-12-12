import 'package:absensi_p6/view_models/movie_detail_controller.dart';
import 'package:absensi_p6/views/movie_detail_view.dart';
import 'package:get/get.dart';

import '../data/repositories/movie_repository.dart';
import '../data/services/omdb_service.dart';
import '../view_models/movie_controller.dart';
import '../views/movie_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages =
      <
        GetPage
      >[
        GetPage(
          name: Routes.home,
          page: () => MovieView(),
          binding: BindingsBuilder(
            () {
              // Service
              Get.lazyPut<
                OmdbService
              >(
                () => OmdbService(),
              );

              // Repository
              Get.lazyPut<
                MovieRepository
              >(
                () => MovieRepository(
                  omdbService:
                      Get.find<
                        OmdbService
                      >(),
                ),
              );

              // Controller
              Get.lazyPut<
                MovieController
              >(
                () => MovieController(
                  repository:
                      Get.find<
                        MovieRepository
                      >(),
                ),
              );
            },
          ),
        ),
        GetPage(
          name: Routes.detail,
          page: () => MovieDetailView(),
          binding: BindingsBuilder(
            () {
              Get.lazyPut(
                () => MovieDetailController(
                  repository:
                      Get.find<
                        MovieRepository
                      >(),
                ),
              );
            },
          ),
        ),
      ];
}
