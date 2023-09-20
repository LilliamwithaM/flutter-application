import 'package:flutter/material.dart';
import 'package:carlosart17_app/components/my_button.dart';
import 'package:carlosart17_app/components/my_textfield.dart';
import 'package:carlosart17_app/components/square_tile.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void goHome(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  void signIn(BuildContext context) {
    Navigator.pushNamed(context, '/signin');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 181, 81),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              Text(
                'Inicio de Sesion',
                style: TextStyle(
                  color: Color.fromARGB(255, 90, 39, 5),
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),

              const SizedBox(height: 50),

              Text(
                '¡Hola de nuevo!',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              MyTextField(
                controller: usernameController,
                hintText: 'Nombre de usuario',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Contraseña',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Olvidaste tu contraseña?',
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              MyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                buttonType: ButtonType.IniciarSesion,
              ),

              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  signIn(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿No estas registrado?',
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Registrate',
                      style: TextStyle(
                        color: Color.fromARGB(255, 90, 39, 5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
