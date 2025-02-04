import 'package:blank_app/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/config.freezed.dart';
part 'generated/config.g.dart';

@freezed
class Config with _$Config {
  const factory Config({
    required final Env env,
    required final String apiUrl,
  }) = _Config;

  factory Config.fromJson(final Map<String, Object?> json) =>
      _$ConfigFromJson(json);
}
