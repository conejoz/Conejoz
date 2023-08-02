import 'package:conejoz/src/features/settings/screens/about_screen.dart';
import 'package:conejoz/src/features/settings/screens/theme_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.language_outlined),
              onPressed: () {
                // Navigate to the language settings screen.
              },
            ),
            title: const Text('Language'),
            subtitle: const Text('Change journal\'s language'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.palette_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThemeScreen(),
                  ),
                );
              },
            ),
            title: const Text('Theme'),
            subtitle: const Text('Change journal\'s theme'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.info_outline_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
            ),
            title: const Text('About'),
            subtitle: const Text('What\'s Conejoz anyway?'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}