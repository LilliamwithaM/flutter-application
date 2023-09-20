import 'package:flutter/material.dart';

enum ButtonType {
  Registro,
  IniciarSesion,
}

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final ButtonType buttonType; // Nuevo parámetro para determinar el tipo de botón

  const MyButton({
    super.key,
    required this.onTap,
    required this.buttonType, // Debes proporcionar el tipo de botón
  });

  @override
  Widget build(BuildContext context) {
    String buttonText = '';

    // Configura el texto y el color del botón según el tipo
    switch (buttonType) {
      case ButtonType.Registro:
        buttonText = 'Registrarme';
        break;
      case ButtonType.IniciarSesion:
        buttonText = 'Iniciar Sesión';
        break;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 121, 58, 0),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
