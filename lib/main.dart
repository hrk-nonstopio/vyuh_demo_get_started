import 'package:flutter/material.dart';
import 'package:vyuh_core/vyuh_core.dart' as vc;
import 'package:vyuh_feature_developer/vyuh_feature_developer.dart'
    as developer;
import 'feature.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  vc.runApp(
    initialLocation: '/counter',
    features: () => [
      feature,
      developer.feature,
    ],
  );
}
