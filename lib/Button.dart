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
        RaisedButton(
          onPressed: () async {
            if (If.emailController.text.toString() == "101cooder" &&
                If.pwdController.text.toString() == "Cooder9826") {
              If.emailController.clear();
              If.pwdController.clear();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            }
            //Navigator.pushNamed(context, '/second');
            else if (If.emailController.text.toString() == "" ||
                If.pwdController.text.toString() == "")
              showAlertDialogForEmptyFields(context);
            else
              showAlertDialog(context);
          },
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: Colors.cyan[500],
        ),
      ],
    );
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
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
    Widget okButton = FlatButton(
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
