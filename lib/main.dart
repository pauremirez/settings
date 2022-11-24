import 'package:flutter/material.dart';
// TODO 6: Añade el import que falta

void main() {
  // TODO 2: Añade algo al método runApp(); para que la app funcione como debiera (ayuda: la instrucción es una linea muy corta!).
  runApp();
}

class MyApp extends StatelessWidget {
  final color = Colors.green[700];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO 3: ¿Cuál es el propósito de utilizar el widget Scaffold aqui? Responde a esta pregunta en el siguiente comentario
      // El Widget Scaffold ...
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlowerLogo(
                size: 220,
                color: color,
              ),
              Column(
                children: [
                  // TODO 4: Añade algunas opciones del settings utilizando la función definida al final de este fichero
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Vamos a usar este widget muchas veces, por lo que tiene sentido extraerlo a una función aparte para
  // evitar la repetición de código. De hecho, incluso si solo lo vamos a usar una vez, también
  // sería una buena idea extraer widgets en sus propias funciones o clases.
  Widget settingCard({IconData icon, String text, bool value}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    icon,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Switch(
                  value: value,
                  activeColor: color,
                  onChanged: (bool newValue) {
                    // TODO 5: ¿Por qué cree que este switch no cambia los valores en la pantalla pero este código en realidad si que se ejecuta? Por favor responde esta pregunta en este mismo comentario.
                    // Porque...
                    print(
                        'Why does this switch not switch values but this text gets printed...?');
                  }),
            ]),
      ),
    );
  }
}
