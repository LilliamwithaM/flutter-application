import 'package:flutter/material.dart';
import 'package:carlosart17_app/components/my_button.dart';
import 'package:carlosart17_app/components/my_textfield.dart';
import 'package:carlosart17_app/components/square_tile.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

  // text editing controllers
  final nameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  void enterUser(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  void logIn(BuildContext context) {
    Navigator.pushNamed(context, '/');
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
                'Registro',
                style: TextStyle(
                  color: Color.fromARGB(255, 90, 39, 5),
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),

              const SizedBox(height: 50),

              
              Text(
                '¡Bienvenido!',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              
              MyTextField(
                controller: nameController,
                hintText: 'Nombre',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              
              MyTextField(
                controller: lastnameController,
                hintText: 'Apellidos',
                obscureText: false,
              ),

              const SizedBox(height: 10),

        
              MyTextField(
                controller: emailController,
                hintText: 'Correo electronico',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              
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

              const SizedBox(height: 25),

              
              MyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                buttonType: ButtonType.Registro,
              ),


              const SizedBox(height: 50),

              InkWell(
                onTap: () {
                  logIn(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿Ya eres miembro?',
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Iniciar Sesion',
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
