
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config/supabase_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: SupabaseConfig.url,
    publishableKey: SupabaseConfig.publishableKey,
  );

  runApp(const MainDorApp());
}

class MainDorApp extends StatelessWidget {
  const MainDorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main d'Or",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Main d'Or"),
        ),
        body: const Center(
          child: Text(
            "Supabase initialized!",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
