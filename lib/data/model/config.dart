import 'package:blank_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/config.freezed.dart';
part 'generated/config.g.dart';

@freezed
class Config with _$Config {
  const factory Config({
    required Env env,
    required String apiUrl,
  }) = _Config;

  factory Config.fromJson(Map<String, Object?> json) => _$ConfigFromJson(json);
}
