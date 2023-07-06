import 'package:get/get.dart';

import 'index.dart';

class NotfoundController extends GetxController {
  NotfoundController();

  final state = NotfoundState();

  void handleTap(int index) {
    Get.snackbar(
      "title",
      "message",
    );
  }
}
