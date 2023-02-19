import 'package:api_to_sqlite/src/models/information_model.dart';
import 'package:api_to_sqlite/src/providers/db_provider.dart';
import 'package:dio/dio.dart';

class InformationApiProvider {
  Future<List<Information?>> getAllInformation() async {
    var url = "https://63974fb777359127a033b875.mockapi.io/empresas/Information";
    Response response = await Dio().get(url);

    return (response.data as List).map((information) {
      // ignore: avoid_print
      print('Inserting $information');
      DBProvider.db.createInformation(Information.fromJson(information));
    }).toList();
  }
}
