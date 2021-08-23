import 'package:flutter_template/app/data/models/user.model.dart';

abstract class UserMock {
  static UserModel getUser() {
    return UserModel(id: 11, name: "ABC", role: 1);
  }

  static dynamic getUsers() {
    return {
      "data": [
        {"role": 1, "name": "name 1", "id": 1},
        {"role": 2, "name": "name 2", "id": 2},
        {"role": 3, "name": "name 3", "id": 3},
        {"role": 1, "name": "name 4", "id": 4},
        {"role": 2, "name": "name 5", "id": 5},
        {"role": 3, "name": "name 6", "id": 6},
        {"role": 1, "name": "name 7", "id": 7},
        {"role": 2, "name": "name 8", "id": 8},
        {"role": 3, "name": "name 9", "id": 9},
        {"role": 1, "name": "name 10", "id": 10},
        {"role": 2, "name": "name 11", "id": 11}
      ],
      "totalCount": 11,
    };
  }
}
