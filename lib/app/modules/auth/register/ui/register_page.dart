import 'package:cuidapet_supplier_mobile/app/core/extensions/screen_size_extensions.dart';
import 'package:cuidapet_supplier_mobile/app/core/extensions/theme_extensions.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/controller/register_controller.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/controller/register_state.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/view_models/register_input_model.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/ui/steps/one/controller/register_step_one_controller.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/ui/steps/one/register_step_one_page.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/ui/steps/three/register_step_three_page.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/ui/steps/two/register_step_two_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steps_indicator/steps_indicator.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller;
  final RegisterStepOneController registerStepOneController;

  const RegisterPage({
    required this.controller,
    required this.registerStepOneController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColorLight,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 1.sw,
              height: .95.sh,
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/login_background.png'),
              //     fit: BoxFit.fill,
              //   ),
              // ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 1.statusBarHeight + 30,
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 150.w,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 15),
                    BlocBuilder<RegisterController, RegisterState>(
                      bloc: controller,
                      builder: (context, state) {
                        return StepsIndicator(
                          selectedStep: state.step - 1,
                          lineLength: 120.w,
                          doneStepColor: context.primaryColorDark,
                          doneLineColor: context.primaryColorDark,
                          undoneLineColor: context.primaryColorDark,
                          selectedStepColorIn: context.primaryColor,
                          selectedStepColorOut: context.primaryColorDark,
                          unselectedStepColorIn: Colors.white,
                          unselectedStepColorOut: context.primaryColorDark,
                          selectedStepSize: 20,
                          unselectedStepSize: 15,
                          doneStepSize: 20,
                          nbSteps: 3,
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    BlocBuilder<RegisterController, RegisterState>(
                      bloc: controller,
                      builder: (context, state) {
                        return Visibility(
                          visible: state.error == null,
                          replacement: Center(
                            child: Column(
                              children: [
                                const Text('Erro ao registrar usuário'),
                                TextButton(
                                  onPressed: () => controller.restartProcess(),
                                  child: const Text(
                                    'Clique aqui para reiniciar o processo',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          child: _showStep(state.step, state.model),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _showStep(int step, RegisterInputModel model) {
    switch (step) {
      case 1:
        return RegisterStepOnePage(controller: registerStepOneController);
      case 2:
        return const RegisterStepTwoPage();
      case 3:
        return const RegisterStepThreePage();
      default:
        return const Center(
          child: Text('Passo não encontrado'),
        );
    }
  }
}
