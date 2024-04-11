import 'dart:convert';

class MasterDoctorResponseModel {
    final List<MasterDoctor>? data;
    final String? message;
    final String? status;

    MasterDoctorResponseModel({
        this.data,
        this.message,
        this.status,
    });

    factory MasterDoctorResponseModel.fromJson(String str) => MasterDoctorResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory MasterDoctorResponseModel.fromMap(Map<String, dynamic> json) => MasterDoctorResponseModel(
        data: json["data"] == null ? [] : List<MasterDoctor>.from(json["data"]!.map((x) => MasterDoctor.fromMap(x))),
        message: json["message"],
        status: json["status"],
    );

    Map<String, dynamic> toMap() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "message": message,
        "status": status,
    };
}

class MasterDoctor {
    final int? id;
    final String? doctorName;
    final String? doctorSpecialist;
    final String? doctorPhone;
    final String? doctorEmail;
    final String? photo;
    final String? address;
    final String? sip;
    final dynamic idIhs;
    final dynamic nik;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    MasterDoctor({
        this.id,
        this.doctorName,
        this.doctorSpecialist,
        this.doctorPhone,
        this.doctorEmail,
        this.photo,
        this.address,
        this.sip,
        this.idIhs,
        this.nik,
        this.createdAt,
        this.updatedAt,
    });

    factory MasterDoctor.fromJson(String str) => MasterDoctor.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory MasterDoctor.fromMap(Map<String, dynamic> json) => MasterDoctor(
        id: json["id"],
        doctorName: json["doctor_name"],
        doctorSpecialist: json["doctor_specialist"],
        doctorPhone: json["doctor_phone"],
        doctorEmail: json["doctor_email"],
        photo: json["photo"],
        address: json["address"],
        sip: json["sip"],
        idIhs: json["id_ihs"],
        nik: json["nik"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "doctor_name": doctorName,
        "doctor_specialist": doctorSpecialist,
        "doctor_phone": doctorPhone,
        "doctor_email": doctorEmail,
        "photo": photo,
        "address": address,
        "sip": sip,
        "id_ihs": idIhs,
        "nik": nik,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
