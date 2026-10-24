import 'package:flutter/material.dart';

class TogglePage extends StatefulWidget {
  const TogglePage({super.key});

  @override
  State<TogglePage> createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  bool isNyala = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toggle')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // perubahan ikon dan warna
            Icon(
              isNyala ? Icons.lightbulb : Icons.lightbulb_outline,
              size: 100,
              color: isNyala
                  ? const Color.fromARGB(255, 242, 64, 15)
                  : const Color.fromARGB(255, 138, 128, 128),
            ),
            const SizedBox(height: 16),
            // status
            Text(
              isNyala ? 'Menyala' : 'Mati',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: isNyala
                    ? const Color.fromARGB(255, 245, 22, 189)
                    : const Color.fromARGB(255, 107, 107, 105),
              ),
            ),
            const SizedBox(height: 24),
            // mengubah state
            Switch(
              value: isNyala,
              activeThumbColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  isNyala = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
