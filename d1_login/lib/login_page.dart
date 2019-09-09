import 'package:d1_login/custom_button.dart';
import 'package:d1_login/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode emailNode = FocusNode();
  final FocusNode passwordNode = FocusNode();
  bool _hidePassword = true;
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 2),
              Icon(
                FontAwesomeIcons.home,
                color: Theme.of(context).primaryColor,
                size: 72,
              ),
              SizedBox(height: 16),
              Text(
                'Smart Home',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 4),
              TextFormField(
                focusNode: emailNode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  emailNode.unfocus();
                  passwordNode.requestFocus();
                },
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if ((value?.isEmpty ?? true) || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                focusNode: passwordNode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock_open,
                    color: Theme.of(context).primaryColor,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.only(right: 16),
                    icon: Icon(
                      _hidePassword
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                      color: Theme.of(context).primaryColor,
                    ),
                    splashColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _hidePassword = !_hidePassword;
                      });
                    },
                  ),
                ),
                onFieldSubmitted: (_) {
                  passwordNode.unfocus();
                  _formKey.currentState.validate();
                },
                keyboardType: TextInputType.emailAddress,
                obscureText: _hidePassword,
                validator: (value) {
                  if ((value?.isEmpty ?? true) || value.length < 6) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32),
              Row(
                children: <Widget>[
                  CustomCheckbox(
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value;
                      });
                    },
                    value: _rememberMe,
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _rememberMe = !_rememberMe;
                      });
                    },
                    child: Text('Remember Me'),
                  ),
                  Spacer(),
                  Text(
                    'FORGOT PASSWORD?',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              CustomButton(
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  _formKey.currentState.validate();
                },
              ),
              SizedBox(height: 32),
              Text(
                'or connect with',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomButton(
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(width: 16),
                  CustomButton(
                    child: Icon(
                      FontAwesomeIcons.googlePlusG,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(width: 16),
                  CustomButton(
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t have an account?'),
                  SizedBox(width: 16),
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
