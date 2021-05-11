import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}


TextEditingController emailController = new TextEditingController();
TextEditingController pwdController = new TextEditingController();

class _InputFieldState extends State<InputField> {
  @override
  String hinttext = "Password";
  bool _isHidden = true;

  void _toggle(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[200])
            ),
          ),
          child: TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(color: Colors.grey,),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[200])
            )
          ),
          child: TextFormField(
            controller: pwdController,
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              suffixIcon: IconButton(icon: _isHidden ? Icon(Icons.visibility_off): Icon(Icons.visibility), onPressed: _toggle)
            ),
            obscureText: hinttext == "Password" ? _isHidden: false,
          ),
        ),
      ],
    );
  }
}
