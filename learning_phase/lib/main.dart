import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_phase/widgets/widgetsTree.dart';
import 'Riverpod/screens/home_screen.dart';
import 'UI/theme/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp())
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      // home: const WidgetsTree(),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}