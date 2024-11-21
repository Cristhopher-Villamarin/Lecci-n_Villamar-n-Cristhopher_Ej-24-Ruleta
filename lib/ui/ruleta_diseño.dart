import 'package:flutter/material.dart';
import '../logica/ruleta_logica.dart';

class RuletaDiseno extends StatefulWidget {
  @override
  _RuletaDisenoState createState() => _RuletaDisenoState();
}

class _RuletaDisenoState extends State<RuletaDiseno> {
  Ruleta ruleta = Ruleta();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            '!!BIENVENIDOS AL JUEGO DE LA RULETA!!',
            style: TextStyle(fontSize: 18),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent.shade200, Colors.white,
              Colors.blue.shade200, Colors.purple.shade200,
              Colors.green.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Image.asset(
                  'assets/images/ruleta.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ruleta.generarNumeros();
                    });
                  },
                  child: Text('Gira la Ruleta 5 veces'),
                ),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    'Números Obtenidos: ${ruleta.numerosGenerados.join(', ')}',
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Porcentaje de Pares: ${ruleta.porcentajePares.toStringAsFixed(2)}%',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Porcentaje de Impares: ${ruleta.porcentajeImpares.toStringAsFixed(2)}%',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Porcentaje de Ceros: ${ruleta.porcentajeCeros.toStringAsFixed(2)}%',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
