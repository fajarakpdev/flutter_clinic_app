part of 'data_doctor_bloc.dart';

@freezed
class DataDoctorState with _$DataDoctorState {
  const factory DataDoctorState.initial() = _Initial;
  const factory DataDoctorState.loading() = _Loading;
  const factory DataDoctorState.loaded(List<MasterDoctor> doctors) = _Loaded;
  const factory DataDoctorState.error(String message) = _Error;
}
