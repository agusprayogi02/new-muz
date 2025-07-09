import 'package:flavor/flavor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'bootstrap.dart';
import 'common/utils/config.dart';

void main() {
  Flavor.create(
    Environment.dev,
    color: Colors.green,
    name: 'PREVIEW',
    properties: {
      Keys.apiUrl: 'https://newsapi.org/v2/',
      Keys.apiKey: '3e4778c853c140b2a659b0c38882fcd2',
      Configs.customKey: 'value',
    },
  );
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
  }
  bootstrap();
}
