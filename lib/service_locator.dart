import 'package:docdoc/src/core/helpers/cache_helper.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'src/config/locator/setup_locator_for_core.dart';
part 'src/config/locator/setup_locator_for_external.dart';

final GetIt getIt = GetIt.instance;

class ServiceLocator {
  Future<void> init() async {
    await SetupLocatorForExternal().setup();

    SetupLocatorForCore().setup();
  }
}
