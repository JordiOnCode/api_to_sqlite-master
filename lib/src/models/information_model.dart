import 'dart:convert';

List<Information> informationFromJson(String str) =>
    List<Information>.from(json.decode(str).map((x) => Information.fromJson(x)));

String informationToJson(List<Information> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Information {
  String? id;
  String? name;
  String? boss;
  String? avatarboss;
  int? creationData;

  Information({
    this.id,
    this.name,
    this.boss,
    this.avatarboss,
    this.creationData,
  });

  factory Information.fromJson(Map<String, dynamic> json) => Information(
        id: json["id"],
        name: json["name"],
        boss: json["boss"],
        avatarboss: json["avatarboss"],
        creationData: json["creationData"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "boss": boss,
        "avatarboss": avatarboss,
        "creationData": creationData,
      };
}
