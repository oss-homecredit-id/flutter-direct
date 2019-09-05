import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class InputComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atomic Input"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AtomicInput(
                  keyValue: 'search',
                  hintText: 'Cari Pesan',
                  inputType: InputType.Search,
                  onTap: (){},
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Divider(
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AtomicInput(
                  keyValue: 'username',
                  hintText: 'USERNAME',
                  inputType: InputType.Authentication,
                  formType: FormType.Username,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Divider(
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AtomicInput(
                  keyValue: 'password',
                  hintText: 'PASSWORD',
                  inputType: InputType.Authentication,
                  formType: FormType.Password,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}