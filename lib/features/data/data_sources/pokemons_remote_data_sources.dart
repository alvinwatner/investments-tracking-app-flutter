import 'package:dio/dio.dart';
import 'package:pokemon/config/flavor_config.dart';
import 'package:pokemon/features/data/models/pagination/pagination.dart';
import 'package:pokemon/features/data/models/pokemon/detail_pokemon_response.dart';
import 'package:pokemon/features/data/models/result/result_response.dart';

abstract class PokemonsRemoteDataSource {
  /// Panggil endpoint [BaseUrlConfig]/v2/pokemon
  ///
  /// Throws [DioError] untuk semua error kode

  /// Panggil endpoint [BaseUrlConfig]/v2/pokemon/{name}
  ///
  /// Throws [DioError] untuk semua error kode

}

class PokemonsRemoteDataSourceImpl implements PokemonsRemoteDataSource {
  final Dio dio;

  PokemonsRemoteDataSourceImpl({
    required this.dio,
  });

  final baseUrl = FlavorConfig.instance!.values!.baseUrlEndpoint;
}
