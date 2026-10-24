import 'package:flutter/material.dart';

class MultiStatePage extends StatefulWidget {
  const MultiStatePage({super.key});

  @override
  State<MultiStatePage> createState() => _MultiStatePageState();
}

class _MultiStatePageState extends State<MultiStatePage> {
  int counter = 0;
  bool isDark = false;
  String nama = 'ara';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multi State')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama: $nama', style: const TextStyle(fontSize: 18)),
            Text('Counter: $counter', style: const TextStyle(fontSize: 18)),
            Text(
              'Tema: ${isDark ? "Gelap" : "Terang"}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => setState(() => counter++),
              child: const Text('Tambah Counter'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => setState(() => isDark = !isDark),
              child: const Text('Ganti Tema'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => setState(() {
                nama = nama == 'ara' ? 'ani' : 'ara';
              }),
              child: const Text('Ganti Nama'),
            ),
          ],
        ),
      ),
    );
  }
}
