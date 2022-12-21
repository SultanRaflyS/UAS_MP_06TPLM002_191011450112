import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:uas_mp/request/beritaterkini_request.dart';
import '../model/beritaterkini_model.dart';
part 'beritaterkini_state.dart';

class BeritaNewsCubit extends Cubit<BeritaTerkiniState> {
  BeritaNewsCubit() : super(BeritaInitial());

  final BeritaIndonesiaRequest BeritaindonesiaRequest = BeritaIndonesiaRequest();

  BeritaIndonesiaModel BeritaModel = BeritaIndonesiaModel();

  getDataBeritaModel() async {
    emit(BeritaInitial());
    BeritaModel = await BeritaindonesiaRequest.getBeritaModel();
    emit(DataBerita(BeritaModel));
  }
}