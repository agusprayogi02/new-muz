import 'package:flavor/flavor.dart';

import 'bootstrap.dart';
import 'common/utils/config.dart';

void main() {
  Flavor.create(
    Environment.production,
    properties: {
      Keys.apiUrl: 'https://newsapi.org/v2/',
      Keys.apiKey: '3e4778c853c140b2a659b0c38882fcd2',
      Configs.customKey: 'value',
    },
  );
  bootstrap();
}
