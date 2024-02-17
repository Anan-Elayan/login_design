import 'package:flutter/material.dart';
import 'package:login_design/login/components/text_field_and_title.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isHidePassword = true;
  bool ischecked = false;
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
          child: SizedBox(
            width: double.maxFinite,
            child: Form(
              key: keyForm,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextFieldAndTitle(
                    title: 'Username',
                    hintText: "Enter User ID or Email",
                    validator: (value) {
                      RegExp regExp = RegExp(
                          r'^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');
                      if (value?.isEmpty ?? true) {
                        return "User Name  can't be empty";
                      } else if (value!.length < 8) {
                        return 'User name must have at  least 8 characters';
                      } else if (!regExp.hasMatch(value)) {
                        return 'user name is  invalid';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFieldAndTitle(
                      validator: (value) {
                        RegExp regExp = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if (value?.isEmpty ?? true) {
                          return "Password can't be empty";
                        } else if (value!.length < 8) {
                          return 'Password must have at  least 8 characters';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Password is  invalid';
                        }
                        return null;
                      },
                      title: 'Password',
                      hintText: "Enter Password",
                      isShowPassword: isHidePassword,
                      SuffixIcon: IconButton(
                        icon: Icon(
                          isHidePassword
                              ? Icons.visibility
                              : Icons.visibility_off_sharp,
                          color: isHidePassword ? Colors.green : Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            isHidePassword = !isHidePassword;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green.shade800,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green.shade800),
                              value: ischecked,
                              onChanged: (value) {
                                setState(
                                  () {
                                    ischecked = value ?? false;
                                  },
                                );
                              },
                            ),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green.shade800,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            if (keyForm.currentState!.validate()) {
                              print("login done");
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 15, 79, 60),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(25),
                                  topLeft: Radius.circular(25),
                                )),
                            child: const Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
