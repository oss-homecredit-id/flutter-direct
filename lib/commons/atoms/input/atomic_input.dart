import 'package:flutter/material.dart';

enum InputType { Authentication, Search }
enum FormType { Username, Password }

class AtomicInput extends StatelessWidget {
  final String hintText;
  final GestureTapCallback onTap;
  final String keyValue;
  final InputType inputType;
  final FormType formType;

  final Function funcValidatorUsername;
  final Function funcValidatorPassword;

  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController searchController;
  final TextEditingController inputController;

  AtomicInput({
    this.hintText,
    this.onTap,
    this.keyValue,
    this.inputType,
    this.formType,
    this.funcValidatorUsername,
    this.funcValidatorPassword,
    this.usernameController,
    this.passwordController,
    this.searchController,
    this.inputController
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue ?? ''),
      child: inputType == InputType.Search
          ? TextField(
              key: Key(keyValue),
              controller: searchController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                suffixIcon: GestureDetector(
                  onTap: onTap,
                  child: Icon(Icons.close, color: Colors.grey),
                ),
                hintText: hintText,
                hintStyle: TextStyle(fontFamily: 'PtSans'),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(13.0),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(13.0),
                ),
              ),
            )
          : inputType == InputType.Authentication
              ? TextField(
                  key: Key(keyValue),
                  onChanged: inputType == InputType.Authentication &&
                          formType == FormType.Username
                      ? funcValidatorUsername
                      : funcValidatorPassword,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  controller: inputType == InputType.Authentication &&
                          formType == FormType.Username
                      ? usernameController
                      : passwordController,
                  obscureText: inputType == InputType.Authentication &&
                          formType == FormType.Username
                      ? false
                      : true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 169, 169, 169),
                        fontWeight: FontWeight.w500),
                    hasFloatingPlaceholder: false,
                    contentPadding: EdgeInsets.only(left: 14.0),
                  ),
                )
              : TextField(),
    );
  }

  getInputType(InputType inputType) {
    switch (inputType) {
      case InputType.Authentication:
        return true;
        break;
      case InputType.Search:
        return true;
        break;
    }
  }

  getFormType(FormType formType) {
    switch (formType) {
      case FormType.Username:
        return true;
        break;
      case FormType.Password:
        return true;
        break;
    }
  }
}
