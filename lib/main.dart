import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        "Приложение для авторизации и регистрации",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
          body: Container(
            color: Colors.white,
    child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: const Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Добро пожаловать!",
                            style: TextStyle(
                              fontSize: 80,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Вы можете:",
                            style: TextStyle(
                              fontSize: 80,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                    color: Colors.white,
                    alignment: Alignment.topCenter,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Login()
                        ),
                        );
                      },
                      child: const Text(
                        "авторизоваться",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topCenter,
                          color: Colors.white,
                          child: const Text(
                            "или",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.topCenter,
                          color: Colors.white,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUp()
                                ),
                              );
                            },
                            child: const Text(
                              "зарегистрироваться",
                              style: TextStyle(
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

