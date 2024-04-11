// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/core.dart';
import 'package:flutter_clinic_app/presentation/master/pages/data_doctor_page.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/button_menu.dart';
import '../../../core/components/spaces.dart';
import '../../home/widgets/build_app_bar.dart';

class MasterPage extends StatefulWidget {
  final void Function(int index) onTap;
  const MasterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: BuildAppBar(
          title: 'Data Master',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 110.0),
        child: Wrap(
          runSpacing: 16,
          children: [
            ButtonMenu(
              label: 'Data Dokter',
              iconPath: Assets.images.menu.data.path,
              onPressed: () {
                context.push(const DataDoctorPage());
              },
            ),
            const SpaceWidth(45.0),
            ButtonMenu(
              label: 'Data Pasien',
              iconPath: Assets.images.menu.data.path,
              onPressed: () => widget.onTap(2),
            ),
            const SpaceWidth(45.0),
            ButtonMenu(
              label: 'Jadwal Dokter',
              iconPath: Assets.images.menu.jadwal.path,
              onPressed: () => widget.onTap(3),
            ),
            const SpaceWidth(45.0),
            ButtonMenu(
              label: 'Layanan',
              iconPath: Assets.images.menu.layanan.path,
              onPressed: () => widget.onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
