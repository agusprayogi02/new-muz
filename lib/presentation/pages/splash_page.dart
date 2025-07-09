import 'package:dio_log/dio_log.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/presentation/pages/home/home_page.dart';

import '../../common/extensions/extensions.dart';
import '../components/components.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const path = "/";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await 3.delayedSeconds;
    if (Flavor.instance.environment != Environment.production) {
      showDebugBtn(context, btnColor: Colors.green);
    }
    // final user = await locator<SessionSource>().hasSession;
    // if (user) {
    context.route.replace(HomePage.path);
    // }
    // context.route.replace(LoginPage.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(alignment: Alignment.center, child: const BaseLogo()),
    );
  }
}
