// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SuratSebelumnya extends Equatable {
  final int id;
  final int nomor;
  final String nama;
  final String namaLatin;
  final int jumlahAyat;
  final String tempatTurun;
  final String arti;
  final String deskripsi;
  final String audio;

  const SuratSebelumnya({
    required this.id,
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.deskripsi,
    required this.audio,
  });

  factory SuratSebelumnya.fromMap(Map<String, dynamic> map) {
    return SuratSebelumnya(
      id: map['id'],
      nomor: map['nomor'],
      nama: map['nama'],
      namaLatin: map['nama_latin'],
      jumlahAyat: map['jumlah_ayat'],
      tempatTurun: map['tempat_turun'],
      arti: map['arti'],
      deskripsi: map['deskripsi'],
      audio: map['audio'],
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      nomor,
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      audio,
    ];
  }
}
