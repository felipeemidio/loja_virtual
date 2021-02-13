import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  // usuario atual

  bool isLoading = false;

  void signUp() {

  }

  void signIn() async {
    print("signIn");
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 3));

    isLoading = false;
    notifyListeners();
  }
}