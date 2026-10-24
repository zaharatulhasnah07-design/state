import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _namaController = TextEditingController();
  String hasil = '';

  @override
  void initState() {
    super.initState();
    debugPrint('FormPage dibuat');
  }

  @override
  void dispose() {
    debugPrint('FormPage dihancurkan');
    _namaController.dispose();
    super.dispose();
  }

  void simpan() {
    setState(() {
      hasil = 'Halo, ${_namaController.text}!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Input')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: simpan, child: const Text('Simpan')),
            const SizedBox(height: 16),
            Text(hasil, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
