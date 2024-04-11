import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/presentation/master/bloc/data_doctor/data_doctor_bloc.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../models/doctor_model.dart';
import '../../home/widgets/build_app_bar.dart';

class DataDoctorPage extends StatefulWidget {
  const DataDoctorPage({super.key});

  @override
  State<DataDoctorPage> createState() => _DataDoctorPageState();
}

class _DataDoctorPageState extends State<DataDoctorPage> {
  final SearchController searchController = SearchController();
  // final searchController = TextEditingController();
  // final doctors = [
  //   DoctorModel(
  //     imageUrl:
  //         'https://cdn.idntimes.com/content-images/duniaku/post/20191101/roronoa-zoro-smile-0078d7e8a33471cfbb5077358d7d21d5.jpg',
  //     name: 'Dr. John Doe',
  //     spesialis: 'Cardiologist',
  //     noReg: 'DOC12345',
  //     jadwalPraktikBuka: DateTime(2024, 2, 24, 9, 0),
  //     jadwalPraktikTutup: DateTime(2024, 2, 24, 17, 0),
  //     ruangan: 'Room 101',
  //   ),
  //   DoctorModel(
  //     imageUrl:
  //         'https://cdn.idntimes.com/content-images/duniaku/post/20191101/roronoa-zoro-smile-0078d7e8a33471cfbb5077358d7d21d5.jpg',
  //     name: 'Dr. Jane Smith',
  //     spesialis: 'Dermatologist',
  //     noReg: 'DOC54321',
  //     jadwalPraktikBuka: DateTime(2024, 2, 25, 10, 0),
  //     jadwalPraktikTutup: DateTime(2024, 2, 25, 18, 0),
  //     ruangan: 'Room 202',
  //   ),
  //   DoctorModel(
  //     imageUrl:
  //         'https://cdn.idntimes.com/content-images/duniaku/post/20191101/roronoa-zoro-smile-0078d7e8a33471cfbb5077358d7d21d5.jpg',
  //     name: 'Dr. Michael Johnson',
  //     spesialis: 'Pediatrician',
  //     noReg: 'DOC67890',
  //     jadwalPraktikBuka: DateTime(2024, 2, 26, 8, 0),
  //     jadwalPraktikTutup: DateTime(2024, 2, 26, 16, 0),
  //     ruangan: 'Room 303',
  //   ),
  //   DoctorModel(
  //     imageUrl:
  //         'https://cdn.idntimes.com/content-images/duniaku/post/20191101/roronoa-zoro-smile-0078d7e8a33471cfbb5077358d7d21d5.jpg',
  //     name: 'Dr. Emily Williams',
  //     spesialis: 'Neurologist',
  //     noReg: 'DOC13579',
  //     jadwalPraktikBuka: DateTime(2024, 2, 27, 11, 0),
  //     jadwalPraktikTutup: DateTime(2024, 2, 27, 19, 0),
  //     ruangan: 'Room 404',
  //   ),
  //   DoctorModel(
  //     imageUrl:
  //         'https://cdn.idntimes.com/content-images/duniaku/post/20191101/roronoa-zoro-smile-0078d7e8a33471cfbb5077358d7d21d5.jpg',
  //     name: 'Dr. David Brown',
  //     spesialis: 'Oncologist',
  //     noReg: 'DOC24680',
  //     jadwalPraktikBuka: DateTime(2024, 2, 28, 7, 30),
  //     jadwalPraktikTutup: DateTime(2024, 2, 28, 15, 30),
  //     ruangan: 'Room 505',
  //   ),
  // ];
  // late List<DoctorModel> searchResult;

  @override
  void initState() {
    // searchResult = doctors;
    context.read<DataDoctorBloc>().add(const DataDoctorEvent.getDoctors());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: BuildAppBar(
          title: 'Data Master Dokter',
          withSearchInput: true,
          searchController: searchController,
          // searchChanged: (value) {
          //   searchResult = doctors
          //       .where((element) => element.name
          //           .toLowerCase()
          //           .contains(searchController.text.toLowerCase()))
          //       .toList();
          //   setState(() {});
          // },
          searchHint: 'Cari Dokter',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.stroke),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              child: BlocBuilder<DataDoctorBloc, DataDoctorState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (doctors) {
                      return DataTable(
                        columns: [
                          DataColumn(
                            label: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Button.filled(
                                onPressed: () {},
                                label: 'Nama Dokter',
                                width: null,
                                color: AppColors.title,
                                textColor: AppColors.black.withOpacity(0.5),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Button.filled(
                                onPressed: () {},
                                label: 'Spesialis',
                                width: null,
                                color: AppColors.title,
                                textColor: AppColors.black.withOpacity(0.5),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Button.filled(
                                onPressed: () {},
                                label: 'No REG',
                                width: null,
                                color: AppColors.title,
                                textColor: AppColors.black.withOpacity(0.5),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                        rows: doctors.isEmpty
                            ? [
                                const DataRow(
                                  cells: [
                                    DataCell(Row(
                                      children: [
                                        Icon(Icons.highlight_off),
                                        SpaceWidth(4.0),
                                        Text('Data tidak ditemukan..'),
                                      ],
                                    )),
                                    DataCell.empty,
                                    DataCell.empty,
                                  ],
                                ),
                              ]
                            : doctors
                                .map(
                                  (doctor) => DataRow(
                                    cells: [
                                      DataCell(Text(
                                        doctor.doctorName ?? '',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(
                                          Text(doctor.doctorSpecialist ?? '')),
                                      DataCell(Text(doctor.sip ?? '')),
                                    ],
                                  ),
                                )
                                .toList(),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
