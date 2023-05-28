import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/especialization_dirver/impl_drive_db_sqflite.dart';
import 'package:mercadinho_dona_marry/util/extencions/string_extencions.dart';
class FormCadastroClienteTabPage extends StatefulWidget {
  const FormCadastroClienteTabPage({Key? key}) : super(key: key);
  @override
  _FormCadastroClienteTabPageState createState() => _FormCadastroClienteTabPageState();
}
class _FormCadastroClienteTabPageState extends State<FormCadastroClienteTabPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomFormField(
                  hintText: 'Name',
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r"[a-zA-Z]+|\s"),
                    )
                  ],
                  validator: (val) {
                    if (!val!.isValidName) return 'Enter valid name';
                  },
                ),
                CustomFormField(
                  hintText: 'Email: example@example.com',
                  validator: (val) {
                    if (!val!.isValidEmail) return 'Enter valid email';
                  },
                ),
                CustomFormField(
                  hintText: 'Telefone: ddd 9 xxxxxxxx',
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r"[0-9]"),
                    )
                  ],
                  validator: (val) {
                    if (!val!.isValidPhone) return 'Enter valid phone';
                  },
                ),
                CustomFormField(
                  hintText: 'Password',
                  validator: (val) {
                    if (!val!.isValidPassword) return 'Enter valid password';
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                    SQFliteDrive.instance.database;
                  },
                  child: const Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: inputFormatters,
        validator: validator,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}