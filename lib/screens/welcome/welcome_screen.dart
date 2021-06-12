import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:dynamics_pi/constants.dart';
import 'package:dynamics_pi/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String _nome = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 850,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        // Logo Dynamics
                        padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
                        child: Image.asset("utilidades/assets/imagens/Dynamics.png"),
                      ),
                      Spacer(), //2/6
                      Text(
                        "Vamos revisar o que aprendemos!",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text("Digite seu nome:"),
                      Spacer(), // 1/6
                      TextField(
                        onChanged: (text) {
                          _nome = text;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.lightBlueAccent.withOpacity(0.2),
                          hintText: "Nome completo",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Spacer(), // 1/6
                      InkWell(
                        onTap: () {
                          if (_nome != "") {
                              Get.to(QuizScreen());
                          } else {
                            showDialog<bool>(
                                context: context,
                                barrierDismissible: false,
                                builder: (context) => AlertDialog(
                                      title: Text('Favor preencher seu nome'),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context, false);
                                            },
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
                                            child: Text('Ok')),
                                      ],
                                    ));
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(kDefaultPadding * 0.75),
                          // 15
                          decoration: BoxDecoration(
                            gradient: kPrimaryGradient,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Text(
                            "Bora começar!",
                            style: Theme.of(context).textTheme.button.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                      Spacer(flex: 2), // it will take 2/6 spaces
                    ],
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
