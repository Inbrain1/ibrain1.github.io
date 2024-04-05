import 'package:fan_page/ui/input_decorations.dart';
import 'package:fan_page/widgets/card_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../providers/login_form_provider.dart';
import '../../widgets/widgets.dart';
import 'auth_service.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 250),
          CardContainer(
              child: Column(
            children: [
              SizedBox(height: 10),
              Text('Crear cuenta',
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: 30),
              ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: _BodyRegisterPanel())
            ],
          )),
          SizedBox(height: 50),
          TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all(Colors.indigo.withOpacity(0.1)),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: Text(
                '¿Ya tienes una cuenta?',
                style: TextStyle(fontSize: 18, color: Colors.black87),
              )),
          SizedBox(height: 50),
        ],
      ),
    ));
  }
}

class _BodyRegisterPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginFrom = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginFrom.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: 'Bob.doe@gmail.com',
                labelText: 'Email',
                prefixIcon: Icons.alternate_email_outlined),
            onChanged: (value) => loginFrom.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = new RegExp(pattern);
              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'Please enter a valid email';
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecorations.authInputDecoration(
                hintText: '********',
                labelText: 'Password',
                prefixIcon: Icons.lock_outline),
            onChanged: (value) => loginFrom.password = value,
            validator: (value) {
              return (value != null && value.length >= 6)
                  ? null
                  : 'The password must be at least 6 characters';
            },
          ),
          const SizedBox(height: 30),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.deepPurple,
            onPressed: loginFrom.isLoading
                ? null
                : () async {
                    FocusScope.of(context).unfocus();
                    final authService =
                        Provider.of<AuthService>(context, listen: false);
                    if (!loginFrom.isValidForm()) return;
                    loginFrom.isLoading = true;

                    //TODO: validate if the user is correct
                    final String? errorMessage = await authService.createUser(
                        loginFrom.email, loginFrom.password);
                    if (errorMessage==null ){
                      Navigator.pushReplacementNamed(context, 'home');
                    }else{
                      print(errorMessage);
                      loginFrom.isLoading = false;

                    }

                  },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text(
                loginFrom.isLoading ? 'Wait...' : 'Register',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
