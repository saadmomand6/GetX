import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString path = ''.obs;
  Future pickImage() async {
    final ImagePicker pick = ImagePicker();
    final image = await pick.pickImage(source: ImageSource.camera);
    if (image != null) {
      path.value = image.path.toString();
    }
  }
}
