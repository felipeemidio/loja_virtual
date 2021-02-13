import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Nome Completo"),
              validator: (text) {
                if(text.isEmpty) {
                  return "Nome inválido";
                }
                return '';
              },
            ),
            SizedBox(
              height: 16
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "E-mail"),
              keyboardType: TextInputType.emailAddress,
              validator: (text) {
                if(text.isEmpty || !text.contains("@")) {
                  return "E-mail inválido";
                }
                return '';
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Senha"),
              validator: (text) {
                if(text.isEmpty || text.length < 6) {
                  return "Senha inválida";
                }
                return '';
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(hintText: "Endereço"),
              validator: (text) {
                if(text.isEmpty) {
                  return "Endereço inválida";
                }
                return '';
              },
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 44,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text(
                  "Criar Conta",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  if(_formKey.currentState.validate()) {

                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
