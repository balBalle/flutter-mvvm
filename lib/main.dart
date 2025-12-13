import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:absensi_p6/core/theme/app_theme.dart';
import 'package:absensi_p6/view_models/theme_controller.dart';

void
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(
    fileName: ".env",
  );
  runApp(
    const MyApp(),
  );
}

class MyApp
    extends
        StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      /// Inject controller saat app pertama kali dijalankan
      initialBinding: BindingsBuilder(
        () {
          Get.put(
            ThemeController(),
          );
        },
      ),

      /// Theme
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,

      /// Routing
      initialRoute: Routes.home,
      getPages: AppPages.pages,
    );
  }
}
