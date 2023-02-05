
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;



class CustomCacheManager extends CacheManager {
  static const key = "customCache";

  static CustomCacheManager _instance;

  factory CustomCacheManager() {
    if (_instance == null) {
      _instance = new CustomCacheManager._();
    }
    return _instance;
  }

  CustomCacheManager._() : super(Config(key));

  Future<String> getFilePath() async {
    var directory = await getTemporaryDirectory();
    return p.join(directory.path, key);
  }

}