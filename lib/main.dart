import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/cadastro': (context) => const CadastroPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 310,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 28),
                Image.asset('img/senai.png', width: 230, fit: BoxFit.contain),
                const SizedBox(height: 14),
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 54),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Faça Login para Acessar o Sistema!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 42),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email:', style: TextStyle(fontSize: 20)),
                SizedBox(height: 12),
                SizedBox(
                  height: 59,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Insira seu email:',
                      hintStyle: TextStyle(
                        color: Color(0xFF8A8A8A),
                        fontSize: 16,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFFF9800), width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFFF9800), width: 1.8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Text('Senha:', style: TextStyle(fontSize: 20)),
                SizedBox(height: 12),
                SizedBox(
                  height: 59,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Insira sua senha:',
                      hintStyle: TextStyle(
                        color: Color(0xFF8A8A8A),
                        fontSize: 16,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFF5F5F5), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFF5F5F5), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 42),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      disabledBackgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/cadastro');
                      },
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(
                          color: Color(0xFF173B9A),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Color(0xFF173B9A),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 310,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 28),
                Image.asset('img/senai.png', width: 230, fit: BoxFit.contain),
                const SizedBox(height: 14),
                const Text(
                  'Cadastrar-se',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 54),
          const SizedBox(height: 42),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email:', style: TextStyle(fontSize: 20)),
                SizedBox(height: 12),
                SizedBox(
                  height: 59,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Insira seu email:',
                      hintStyle: TextStyle(
                        color: Color(0xFF8A8A8A),
                        fontSize: 16,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFFF9800), width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFFF9800), width: 1.8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Text('Senha:', style: TextStyle(fontSize: 20)),
                SizedBox(height: 12),
                SizedBox(
                  height: 59,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Insira sua senha:',
                      hintStyle: TextStyle(
                        color: Color(0xFF8A8A8A),
                        fontSize: 16,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFF5F5F5), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Color(0xFFF5F5F5), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 42),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      disabledBackgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      'Voltar ao Login',
                      style: TextStyle(
                        color: Color(0xFF173B9A),
                        fontSize: 18,
                      ),
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
