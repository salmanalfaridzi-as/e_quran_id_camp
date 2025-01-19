import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/daftar_surat_provider.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DaftarSuratProvider>(
            create: (context) => DaftarSuratProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Equran",
        home: Homepage(),
      ),
    );
  }
}
