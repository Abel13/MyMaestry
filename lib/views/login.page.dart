import 'package:first/api/http_summoner.dart';
import 'package:first/controllers/login.controller.dart';
import 'package:first/store/app.store.dart';
import 'package:first/views/home.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SigninPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String _summonerName;
    final store = Provider.of<AppStore>(context);
    final controller = new LoginController(store);

    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 40),
                decoration: BoxDecoration(
                  color: Color(0xFF414141),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.black12,
                        offset: new Offset(1, 2.0),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 60,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "My Maestry",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Veja seu status como jogador",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            // FlatButton(
                            //   child: Text("Sign Up"),
                            //   onPressed: () {},
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          maxLength: 16,
                          decoration:
                              InputDecoration(labelText: "Nome de Invocador"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Invocador inválido';
                            }
                            return null;
                          },
                          onSaved: (input) => _summonerName = input,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          // color: Theme.of(context).primaryColor,
                          child: FlatButton(
                            child: Text("BUSCAR"),
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                var result =
                                    await getSummonerCredentials(_summonerName);
                                controller.setSummoner(result);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
