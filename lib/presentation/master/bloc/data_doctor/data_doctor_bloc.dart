// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_clinic_app/data/datasources/master_remote_datasource.dart';

import '../../../../data/models/response/master_doctor_response_model.dart';

part 'data_doctor_bloc.freezed.dart';
part 'data_doctor_event.dart';
part 'data_doctor_state.dart';

class DataDoctorBloc extends Bloc<DataDoctorEvent, DataDoctorState> {
  final MasterRemoteDatasource _masterRemoteDatasource;
  DataDoctorBloc(
    this._masterRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetDoctors>((event, emit) async {
      emit(const _Loading());
      final result = await _masterRemoteDatasource.getDoctors();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });
  }
}
