import 'package:flutter/material.dart';
import 'package:loginapp/InputField.dart' as If;
import 'Details.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () async {
            if (If.emailController.text.toString() == "101final" &&
                If.pwdController.text.toString() == "final9826") {
              If.emailController.clear();
              If.pwdController.clear();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              //Navigator.pushNamed(context, '/second');
            } else if (If.emailController.text.toString() == "" ||
                If.pwdController.text.toString() == "")
              showAlertDialogForEmptyFields(context);
            else
              showAlertDialog(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.cyan,
          ),
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: Text("Ok"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      content: Text("Invalid Credentials!!!!"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogForEmptyFields(BuildContext context) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      content: Text("Either Username or Password empty or both empty"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
