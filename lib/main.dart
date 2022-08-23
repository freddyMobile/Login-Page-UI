import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _header(context),
                _inputField(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Text(
            "Sign in",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 5,
          child: Text(
            "Welcome! Please,enter your \ndetails",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.all(4),
          child: Text(
            'Email',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "@yahoo.com",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)),
        ),
        Container(
          margin: EdgeInsets.all(4),
          child: Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "********",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: Row(
                children: [],
              ),
            ),
            Container(
              child: TextButton(
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Sign in",
            style: TextStyle(fontSize: 14),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(),
              padding: EdgeInsets.symmetric(vertical: 16),
              shadowColor: Colors.red,
              primary: Colors.purple),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'or',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
          ),
        ),
        Card(
          child: Container(
            height: 30,
            child: SignInButton(
              Buttons.Google,
              text: 'sign in with google',
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Container(
            height: 30,
            child: SignInButton(
              Buttons.Facebook,
              text: 'sign in with facebook',
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
