import 'package:flutter/material.dart';

class PassPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<PassPage> {
  String _text = 'Enter something...';

  void _userNameChanged(String value) {
    setState(() {
      _text = 'Changed: $value';
    });
  }

  void _userNameSubmitted(String value) {
    setState(() {
      _text = 'Submitted $value';
    });
  }

  void _passwordChanged(String value) {
    setState(() {
      _text = 'Changed: $value';
    });
  }

  void _passwordSubmitted(String value) {
    setState(() {
      _text = 'Submitted $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(_text),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Username',
                icon: Icon(Icons.account_circle),
              ),
              autocorrect: false,
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: _userNameChanged,
              onSubmitted: _userNameSubmitted,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Password',
                icon: Icon(Icons.security),
              ),
              autocorrect: false,
              autofocus: false,
              keyboardType: TextInputType.text,
              obscureText: true,
              onChanged: _passwordChanged,
              onSubmitted: _passwordSubmitted,
            ),
          ],
        ),
      ),
    );
  }
}
