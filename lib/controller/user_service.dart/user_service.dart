import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:infolks/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  Future<void> addUser(UserModel usermodel) async {
    final user = await Hive.openBox<UserModel>('database');
    user.add(usermodel);
    notifyListeners();
  }

  Future<List<dynamic>> getUser(UserModel userModel) async {
    final getuser = await Hive.openBox('database');
    List<dynamic> users = [];

    for (var item in getuser as List) {
      users.add(item);
    }
    notifyListeners();
    return users;
  }
}
