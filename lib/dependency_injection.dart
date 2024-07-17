import 'package:get/get.dart';

import 'presentation/feature/login/controller/login_pages_controller.dart';

class DependencyInjection {
  static initControllers() {
    Get.put(LoginPagesController());
  }
}