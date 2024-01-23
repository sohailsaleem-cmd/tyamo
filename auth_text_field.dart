import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final bool obscureText;
  final String labelText;
  final IconData icon;
  final Size;

  AuthTextField(
      {required this.keyboardType,
      required this.obscureText,
      required this.labelText,
      required this.Size,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      keyboardType:keyboardType,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
          fillColor: Colors.white54,
          filled: true,
          prefixIcon:  Icon(
            icon,
            size:Size,
          ),
          prefixIconColor: Colors.black,
          label: Text(
            labelText,
            style: GoogleFonts.lora(color: Colors.black, fontSize: 18),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    );
  }
}
