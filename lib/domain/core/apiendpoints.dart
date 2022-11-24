import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downoads = '$baseurl/trending/all/day?api_key=$apikey';

  static const search = '$baseurl/search/movie?api_key=$apikey';
}
