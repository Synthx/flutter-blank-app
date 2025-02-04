import 'package:blank_app/core/core.dart';
import 'package:blank_app/data/data.dart';

class UserService {
  Future<List<User>> findAll() async {
    final response = await http.get('/users');
    final List data = response.data;

    return data.map((final e) => User.fromJson(e)).toList(growable: false);
  }
}
