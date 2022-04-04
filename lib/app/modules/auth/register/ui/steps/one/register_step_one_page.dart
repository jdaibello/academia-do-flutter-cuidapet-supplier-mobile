import 'package:cuidapet_supplier_mobile/app/core/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapet_supplier_mobile/app/core/ui/widgets/cuidapet_text_form_field.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/ui/steps/one/controller/register_step_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validatorless/validatorless.dart';

class RegisterStepOnePage extends StatefulWidget {
  final RegisterStepOneController controller;

  const RegisterStepOnePage({required this.controller, Key? key})
      : super(key: key);

  @override
  State<RegisterStepOnePage> createState() => _RegisterStepOnePageState();
}

class _RegisterStepOnePageState extends State<RegisterStepOnePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CuidapetTextFormField(
              controller: _nameEC,
              label: 'Nome do Estabelecimento',
              validator: Validatorless.required('Nome obrigatório'),
            ),
            const SizedBox(height: 10),
            CuidapetTextFormField(
              controller: _emailEC,
              label: 'E-mail',
              validator: Validatorless.multiple([
                Validatorless.required('E-mail obrigatório'),
                Validatorless.email('E-mail inválido'),
              ]),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    SizedBox(
                      width: constraints.maxWidth / 2,
                      child: CuidapetDefaultButton(
                        onPressed: () => Modular.to.pop(),
                        label: 'Cancelar',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth / 2,
                      child: CuidapetDefaultButton(
                        onPressed: () {
                          final formValid =
                              _formKey.currentState?.validate() ?? false;

                          if (formValid) {
                            var name = _nameEC.text;
                            var email = _emailEC.text;
                            widget.controller.nextStep(
                              name: name,
                              email: email,
                            );
                          }
                        },
                        label: 'Próximo',
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
