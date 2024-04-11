class DoctorModel {
  final String imageUrl;
  final String name;
  final String spesialis;
  final String noReg;
  final DateTime jadwalPraktikBuka;
  final DateTime jadwalPraktikTutup;
  final String ruangan;

  DoctorModel({
    required this.imageUrl,
    required this.name,
    required this.spesialis,
    required this.noReg,
    required this.jadwalPraktikBuka,
    required this.jadwalPraktikTutup,
    required this.ruangan,
  });

  String get jadwalPraktikFormatted {
    const dayNames = [
      'Minggu',
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu'
    ];

    final String dayName = dayNames[jadwalPraktikBuka.weekday - 1];
    final String openTime =
        '${jadwalPraktikBuka.hour.toString().padLeft(2, '0')}.${jadwalPraktikBuka.minute.toString().padLeft(2, '0')}';
    final String closeTime =
        '${jadwalPraktikTutup.hour.toString().padLeft(2, '0')}.${jadwalPraktikTutup.minute.toString().padLeft(2, '0')}';

    return '$dayName, $openTime-$closeTime';
  }
}
