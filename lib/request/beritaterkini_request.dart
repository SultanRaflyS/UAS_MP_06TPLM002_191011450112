import 'package:dio/dio.dart';
import '../model/beritaterkini_model.dart';

class BeritaIndonesiaRequest {
  Future<BeritaIndonesiaModel> getBeritaModel() async {
    Response response = await Dio()
        .get('https://api-berita-indonesia.vercel.app/antara/terbaru');
    return BeritaIndonesiaModel.fromJson(response.data);
  }

  static getDataBeritaModel() {}
}