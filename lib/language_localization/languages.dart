import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'what is your name',
          'name': 'my name is saad'
          },
        'ur_PK': {
          'message': 'آپ کا نام کیا ہے',
          'name': 'میرا نام سعد ہے۔'
          }
      };
}
