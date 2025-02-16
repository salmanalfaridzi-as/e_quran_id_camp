import 'package:dio/dio.dart';
import '../models/detail_surat.dart';
import 'package:flutter/material.dart';

import '../models/daftar_surat.dart';

class DaftarSuratProvider extends ChangeNotifier {
  final Dio _dio = Dio();

  Future<List<DaftarSurat>?> getDaftarSurat() async {
    final Uri uri = Uri.parse("https://equran.id/api/surat");
    try {
      final response = await _dio.getUri(uri);
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        final daftarSuratList = data
            .map((surat) => DaftarSurat.fromMap(surat as Map<String, dynamic>))
            .toList();
        return daftarSuratList;
      }
    } on DioException catch (e) {
      throw Exception("Error on get Daftar Surat: ${e.message}");
    }
    return null;
  }

  Future<DetailSurat?> getDetailSurat(int nomor) async {
    final Uri uri = Uri.parse("https://equran.id/api/surat/$nomor");
    try {
      final response = await Dio().getUri(uri);
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return DetailSurat.fromMap(data);
      }
    } on DioException catch (e) {
      throw Exception("Error on get Detail Surat: ${e.message}");
    }
    return null;
  }
}
