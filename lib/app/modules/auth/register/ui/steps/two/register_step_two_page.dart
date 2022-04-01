import 'package:cuidapet_supplier_mobile/app/core/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapet_supplier_mobile/app/core/ui/widgets/cuidapet_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterStepTwoPage extends StatelessWidget {
  const RegisterStepTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CuidapetTextFormField(
              label: 'Senha',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            CuidapetTextFormField(
              label: 'Confirmar senha',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              onChanged: null,
              decoration: InputDecoration(
                labelText: 'Categoria',
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              items: const [],
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    SizedBox(
                      width: constraints.maxWidth / 2,
                      child: CuidapetDefaultButton(
                        onPressed: () {},
                        label: 'Voltar',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth / 2,
                      child: CuidapetDefaultButton(
                        onPressed: () {},
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
