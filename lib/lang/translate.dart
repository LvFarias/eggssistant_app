import 'package:eggssistant/lang/en_US.dart';
import 'package:eggssistant/lang/pt_BR.dart';
import 'package:get/get.dart';

class MyTranslate extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUS, 'pt_BR': ptBR};
}
