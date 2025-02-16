// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:e_quran_simple_flutter/models/ayat.dart';

class DetailSurat extends Equatable {
  final int nomor;
  final String nama;
  final String namaLatin;
  final int jumlahAyat;
  final String tempatTurun;
  final String arti;
  final String deskripsi;
  final String audio;
  final bool status;
  final List<Ayat> ayat;
  final dynamic suratSelanjutnya;
  final dynamic suratSebelumnya;

  const DetailSurat({
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.deskripsi,
    required this.audio,
    required this.status,
    required this.ayat,
    required this.suratSelanjutnya,
    required this.suratSebelumnya,
  });

  factory DetailSurat.fromMap(Map<String, dynamic> map) {
    return DetailSurat(
      nomor: map['nomor'],
      nama: map['nama'],
      namaLatin: map['nama_latin'],
      jumlahAyat: map['jumlah_ayat'],
      tempatTurun: map['tempat_turun'],
      arti: map['arti'],
      deskripsi: map['deskripsi'],
      audio: map['audio'],
      status: map['status'],
      ayat: List<Ayat>.from(map['ayat']?.map((x) => Ayat.fromMap(x))),
      suratSelanjutnya: map['surat_selanjutnya'],
      suratSebelumnya: map['surat_sebelumnya'],
    );
  }

  @override
  List<Object> get props {
    return [
      nomor,
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      audio,
      status,
      ayat,
      suratSelanjutnya,
      suratSebelumnya,
    ];
  }
}
