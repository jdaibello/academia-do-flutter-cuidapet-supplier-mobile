import 'package:cuidapet_supplier_mobile/app/core/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapet_supplier_mobile/app/core/ui/widgets/cuidapet_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterStepOnePage extends StatelessWidget {
  const RegisterStepOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CuidapetTextFormField(
              label: 'Nome do Estabelecimento',
            ),
            const SizedBox(height: 10),
            CuidapetTextFormField(
              label: 'E-mail',
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    SizedBox(
                      width: constraints.maxWidth / 2,
                      child: CuidapetDefaultButton(
                        onPressed: () {},
                        label: 'Cancelar',
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
