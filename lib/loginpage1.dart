import 'package:flutter/material.dart';
import 'package:loginpage/singuppage.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  bool _isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: " Enter Email",
                  prefixIcon: Icon(Icons.email_rounded),
                  label: Text("Email"),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Palease fill the details';
                  }
                  if (!value.isValidEmail()) {
                    return 'palease enter valid email';
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: " Enter Password",
                  label: const Text("Password"),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isHide = !true;
      
      
                      });
                    },
                    child:
                        Icon(_isHide ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                obscureText: _isHide,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Palease fill the details';
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                        bool isValidated =
                            _loginFormKey.currentState!.validate();
                        print(isValidated);
                        if (isValidated) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SingupPage()));
                        }
                      },
                color: Colors.brown,
                child: const Text(
                  "LOGIN",
                  style:
                      TextStyle(color: Colors.grey,fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}