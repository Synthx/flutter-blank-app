import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';
part 'generated/user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required final int id,
    required final String name,
    required final String email,
  }) = _User;

  factory User.fromJson(final Map<String, Object?> json) =>
      _$UserFromJson(json);
}
