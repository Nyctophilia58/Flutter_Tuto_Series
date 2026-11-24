import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../UI/theme/theme_provider.dart';

class ThemeIcon extends ConsumerWidget {
  const ThemeIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the theme state so this widget rebuilds when the theme changes.
    ref.watch(themeProvider);
    final isDarkMode = ref.read(themeProvider.notifier).isDarkMode;

    return IconButton(
      onPressed: () {
        ref.read(themeProvider.notifier).toggleTheme();
      },
      icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nights_stay),
      color: isDarkMode ? Colors.amber : Colors.blue,
    );
  }
}