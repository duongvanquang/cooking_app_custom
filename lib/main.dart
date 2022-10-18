import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'src/app_dependencies.dart';
import 'src/commons/command_dender.dart';
import 'src/commons/logger_utils.dart';
import 'src/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await _initApp();
  runApp(EasyLocalization(
    path: 'assets/translations',
    supportedLocales: const [Locale('vi')],
    startLocale: const Locale('vi'),
    fallbackLocale: const Locale('vi'),
    child: MyApp(),
  ));
}

Future<bool> _initApp() async {
  try {
    final bool appInit = await AppDependencies.appInit();
    if (!appInit) {
      return false;
    }

    await _loadConfig();
  } catch (ex) {
    LoggerUtils.e('main _initApp: ${ex.toString()}');
    return false;
  }
  return true;
}

Future<bool> _loadConfig() async {
  try {
    await _startLoadDependency();
  } catch (ex) {
    await CommandSender.dismissLoading();
    return false;
  }
  await CommandSender.dismissLoading();
  return true;
}

Future<bool> _startLoadDependency() async {
  final bool servicesInit = await AppDependencies.servicesInit();
  if (!servicesInit) {
    return false;
  }

  return false;
}
