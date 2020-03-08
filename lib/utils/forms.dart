import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lets_head_out/utils/consts.dart';

class PasswordForm extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<PasswordForm> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    void _toggle() {
      setState(() {
        _obscureText = !_obscureText;
        print(_obscureText);
      });
    }

    return TextFormField(
      style: TextStyle(fontFamily: "nunito",
          fontWeight: FontWeight.w500, color: kgreyDark, fontSize: 15.5),
      obscureText: _obscureText,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.grey.shade700,
          ),
          suffixIcon: IconButton(
            onPressed: _toggle,
            icon: _obscureText
                ? Icon(
                    FontAwesomeIcons.eye,
                    color: Colors.grey.shade700,
                  )
                : Icon(
                    FontAwesomeIcons.eyeSlash,
                    color: Colors.grey.shade700,
                  ),
            iconSize: 20,
          ),
          hintText: "password",
          hintStyle: TextStyle(fontFamily: "nunito",
              fontWeight: FontWeight.w500, color: kgreyDark, fontSize: 15.5),
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusColor: Colors.grey.shade700,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }
}

class NormalForm extends StatelessWidget {
  final IconData icon;
  final String hint;

  NormalForm(this.icon, this.hint);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      style:
      TextStyle(fontFamily: "nunito",
          fontWeight: FontWeight.w500, color: kgreyDark, fontSize: 15.5),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
          prefixIcon: Icon(
            icon,
            color: Colors.grey.shade700,
          ),
          hintText: hint,
          hintStyle:  TextStyle(fontFamily: "nunito",
              fontWeight: FontWeight.w500, color: kgreyDark, fontSize: 15.5),
          contentPadding:
          const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusColor: Colors.grey.shade700,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }
}

