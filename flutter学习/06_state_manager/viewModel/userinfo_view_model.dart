import 'package:flutter/cupertino.dart';
import 'package:helloflutter/05_day/model/userinfo.dart';

class UserInfoViewModel extends ChangeNotifier {
  UserInfo _userInfo;

  UserInfoViewModel(this._userInfo);

  UserInfo get userInfo => _userInfo;

  set userInfo(UserInfo value) {
    _userInfo = value;
    notifyListeners();
  }
}