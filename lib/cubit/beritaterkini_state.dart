part of 'beritaterkini_cubit.dart';

@immutable
abstract class BeritaTerkiniState {}

class BeritaInitial extends BeritaTerkiniState {}

class DataBerita extends BeritaTerkiniState {
  final BeritaIndonesiaModel data;
  DataBerita(this.data);
}