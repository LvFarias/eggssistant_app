import 'package:eggssistant/lang/translate.dart';
import 'package:eggssistant/routes/pages.dart';
import 'package:eggssistant/routes/routes.dart';
import 'package:eggssistant/services/storage.dart';
import 'package:eggssistant/services/user.dart';
import 'package:eggssistant/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslate(),
      locale: const Locale('pt', 'BR'),
      fallbackLocale: const Locale('pt', 'BR'),
      debugShowCheckedModeBanner: false,
      title: 'Eggssistant',
      theme: myTheme(),
      darkTheme: myThemeDark(),
      themeMode: ThemeMode.dark,
      getPages: MyPages.routes,
      initialRoute: MyRoutes.home,
    );
  }
}
