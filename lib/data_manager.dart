import 'package:test_3/app_constants.dart';


class DataManager {
  static String route = "Home / Smukk / ";

  static List<String> images = [
    AppConstants.imgPreview,
    AppConstants.imgPreview,
    AppConstants.imgPreview,
    AppConstants.imgPreview,
  ];

  static String modelDesc = "Our Model is (5’6” tall) and is wearing a size S";
  static String productName = "Women Slim Fit Knitted Round Neck Blue Sweater";

  static Map<String, bool> sizes = {
    'XS': true,
    'S': true,
    'M': true,
    'L': false,
    'XL': false,
    'XXL': true,
  };
}
