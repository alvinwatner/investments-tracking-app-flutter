import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class ResultResponse extends Equatable {
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'data')
  final ResultData? data;

  const ResultResponse({
    this.category,
    this.value,
    this.data,
  });

  static ResultResponse fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResultResponseToJson(this);

  @override
  List<Object?> get props => [
        category,
        value,
        data,
      ];

  @override
  String toString() {
    return 'ResultResponse{category: $category, value: $value, data: $data}';
  }
}

@JsonSerializable(
  explicitToJson: true,
)
class ResultData extends Equatable {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'sub_data')
  final List<ResultSubData>? subData;

  const ResultData({this.name, this.value, this.subData});

  static ResultData fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResultDataToJson(this);

  @override
  List<Object?> get props => [
        name,
        value,
        subData,
      ];

  @override
  String toString() {
    return 'ResultData{name: $name, value: $value, subData: $subData}';
  }
}

@JsonSerializable(
  explicitToJson: true,
)
class ResultSubData extends Equatable {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'value')
  final String? value;

  const ResultSubData({
    this.name,
    this.value,
  });

  static ResultSubData fromJson(Map<String, dynamic> json) =>
      _$ResultSubDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResultSubDataToJson(this);

  @override
  List<Object?> get props => [
        name,
        value,
      ];

  @override
  String toString() {
    return 'ResultSubData{name: $name, value: $value}';
  }
}
