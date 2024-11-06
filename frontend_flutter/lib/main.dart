import 'package:flutter/material.dart';
import 'package:sanity_client/client.dart';
import 'package:vyuh_core/vyuh_core.dart' as vc;
import 'package:vyuh_extension_content/vyuh_extension_content.dart';
import 'feature.dart' as blog;
import 'package:vyuh_feature_system/vyuh_feature_system.dart' as system;
import 'package:vyuh_feature_developer/vyuh_feature_developer.dart'
    as developer;
import 'package:vyuh_plugin_content_provider_sanity/vyuh_plugin_content_provider_sanity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  vc.runApp(
    initialLocation: '/blog',
    features: () => [
      system.feature,
      developer.feature,
      blog.feature,
    ],
    plugins: PluginDescriptor(
      content: DefaultContentPlugin(
        provider: SanityContentProvider(
          SanityClient(
            SanityConfig(
              dataset: 'your_dataset',
              projectId: 'your_project_id',
              token:'your_token',
            ),
          ),
        ),
      )
    ),
  );
}
