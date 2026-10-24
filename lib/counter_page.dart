import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  String riwayat = 'Belum ada aksi';

  void updateCounter(int nilai, String pesan) {
    setState(() {
      counter += nilai;
      riwayat = 'Terakhir: $pesan';
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
      riwayat = 'Terakhir: Reset';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Nilai Counter:', style: TextStyle(fontSize: 18)),
              Text(
                '$counter',
                style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: counter < 0 ? Colors.red : Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                riwayat,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => updateCounter(-10, 'Kurang 10 (-10)'),
                    child: const Text('-10'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => updateCounter(-1, 'Kurang 1 (-1)'),
                    child: const Text('-1'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => updateCounter(1, 'Tambah 1 (+1)'),
                    child: const Text('+1'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => updateCounter(10, 'Tambah 10 (+10)'),
                    child: const Text('+10'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // reset
              OutlinedButton(
                onPressed: resetCounter,
                child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
