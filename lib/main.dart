import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Center (child: Text.rich(
          TextSpan(
            text: "Авторизация",
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ),
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.black26,
              filled: true,
              labelText: "Логин",
              hintText: 'Логин',
              ),
            ),
          ),


          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.black26,
              filled: true,
              labelText: "Пароль",
              hintText: 'Пароль',
            ),
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                side: const BorderSide(color: Colors.grey, width: 2),
              ),
              const Text(
                'Запомнить меня',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),


          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed:(){},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                "Войти",
                style: TextStyle(
                  color: Colors.white,
                    fontSize: 18,
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue, width: 2.0),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                "Регистрация",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              onPressed:(){},
              child: const Text("Восстановить пароль",
                style: TextStyle(color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}