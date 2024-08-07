import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var colorScheme = ColorScheme.fromSeed
    ( seedColor: const Color.fromARGB(255, 70, 54, 160),
        );
        return MaterialApp (
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: colorScheme,
            useMaterial3: true,
             ),
          home:const HomePage(),
        );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 70, 54, 160),
          centerTitle: true,
          title: const Text(
            "Login Screen",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          leading: const Icon(
            Icons.edit,
            color: Colors.white,
            size: 25,
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.message,
              color: Colors.white,
              size: 25,
            ),
          ]
          ),
     body: Column(
      children:[            
            Image.asset(
              'assets/login.jpg',
            width: 350,
            height: 350,
            ),
          
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(' Enter Your Email '),
                    prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 70, 54, 160),)
                    
                  ),
                ),
                                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(' Enter Your Password '),
                    prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 70, 54, 160),)
                    
                   
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 70, 54, 160),
                    child: Row(
                      children: [
                        Text('Login'),
                        Icon(Icons.login)
                      ],
                    ),
                  ),
                ),
              ],
              ),
            ),
            ],
        ),
     );
  }
}
