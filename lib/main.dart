import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffe8e8e8),
            title: const Text('Cuenta de Google'),
            foregroundColor: Colors.black,
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              const CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=9'),
              ),
            ],
            bottom: const TabBar(
              labelStyle:
                  TextStyle(fontSize: 10.0), 
              tabs: [
                Tab(text: 'Página principal'),
                Tab(text: 'Info. personal'),
                Tab(text: 'Datos y privacidad'),
              ],
              labelColor: Colors.black,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: const Text('Tu cuenta está protegida'),
                    subtitle: Text(
                        'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.'),
                    trailing: IconButton(
                        icon: const Icon(Icons.check_circle,
                            color: Colors.green, size: 35),
                        onPressed: () {}),
                  ),
                  ListTile(
                    leading: ElevatedButton(
                      child: const Text('Ver detalles'),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('Verificación de privacidad'),
                    subtitle: const Text(
                        'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.'),
                    trailing: IconButton(
                        icon: const Icon(Icons.privacy_tip,
                            color: Colors.blue, size: 35),
                        onPressed: () {}),
                  ),
                  ListTile(
                    leading: ElevatedButton(
                      child:
                          const Text('Realizar la verificacion de seguridad'),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 60, width: 60),
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('¿Buscas otra información?',
                            textAlign: TextAlign.left,
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(Icons.search,
                                    color: Colors.grey),
                                title: const Text(
                                  'Buscar en la cuenta de Google',
                                  selectionColor: Colors.black,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons
                                      .arrow_right),
                                  onPressed:
                                      () {}, 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading:
                                    const Icon(Icons.help, color: Colors.grey),
                                title: const Text(
                                  'Ver las opciones de ayuda',
                                  selectionColor: Colors.black,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons
                                      .arrow_right), 
                                  onPressed:
                                      () {}, 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(Icons.feedback,
                                    color: Colors.grey),
                                title: const Text(
                                  'Enviar comentarios',
                                  selectionColor: Colors.black,
                                ),
                                trailing: IconButton(
                           
                                  icon: const Icon(Icons
                                      .arrow_right), 
                                  onPressed:
                                      () {}, 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.help),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.feedback),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
             
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
