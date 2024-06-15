import 'package:ess/src/configs/app_setup.locator.dart';
import 'package:ess/src/models/api_response_models/user.dart';
import 'package:ess/src/services/local/auth_service.dart';
import 'package:stacked/stacked.dart';

mixin AuthViewModel on ReactiveViewModel {
  AuthService _authService = locator<AuthService>();

  AuthService get authService => _authService;

  User? get currentUser => _authService.user;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_authService];
}
