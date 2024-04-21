import 'package:get/get.dart';

import '../controllers/lichkab_controller.dart';

class LichkabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LichkabController>(
      () => LichkabController(),
    );
  }
}
