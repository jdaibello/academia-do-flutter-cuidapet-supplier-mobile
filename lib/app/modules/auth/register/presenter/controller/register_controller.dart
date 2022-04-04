import 'package:bloc/bloc.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/controller/register_event.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/controller/register_state.dart';

class RegisterController extends Bloc<RegisterEvent, RegisterState> {
  RegisterController() : super(const RegisterState.start());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is RegisterStepRestartEvent) {
      yield const RegisterState.start();
    }

    if (event is RegisterStepOneEvent) {
      yield RegisterState(step: 1, model: state.model);
    }

    if (event is RegisterStepTwoEvent) {
      yield RegisterState(step: 2, model: state.model);
    }
  }

  void restartProcess() => add(RegisterStepRestartEvent());
}
