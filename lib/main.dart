import 'package:flutter/material.dart';

// Importación de tus archivos externos
// Asegúrate de que los nombres de los archivos en la carpeta 'paginas' coincidan
import 'paginas/inicio.dart';
import 'paginas/hamburguesas.dart';
import 'paginas/bebidas.dart';
import 'paginas/carrito.dart';
import 'paginas/contacto.dart';

void main() => runApp(const CarlsJrApp());

class CarlsJrApp extends StatelessWidget {
  const CarlsJrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carl's Jr. App",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF111111),
          foregroundColor: Color(0xFFFFC107),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      // --- MAPA DE RUTAS NOMBRADAS ---
      // Aquí conectamos las rutas con TUS clases de los archivos externos
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/hamburguesas': (context) => const Hamburguesas(),
        '/bebidas': (context) => const Bebidas(),
        '/carrito': (context) => const Carrito(),
        '/contacto': (context) => const Contacto(),
      },
    );
  }
}

// --- WIDGET DEL MENÚ (DRAWER) ---
// Lo dejamos aquí para que sea accesible desde cualquier página
class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    // Detectamos si es Web (pantalla ancha) para que no se vea gigante
    double anchoPantalla = MediaQuery.of(context).size.width;
    double anchoDrawer = anchoPantalla > 600 ? 350 : anchoPantalla * 0.8;

    return Drawer(
      width: anchoDrawer,
      child: Column(
        children: [
          // Encabezado con info del negocio (Espaciado mejorado)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 60,
              left: 25,
              right: 25,
              bottom: 30,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF111111),
              border: Border(
                bottom: BorderSide(color: Color(0xFFFFC107), width: 4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xFFFFC107),
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "CARL'S JR. MÉXICO",
                  style: TextStyle(
                    color: Color(0xFFFFC107),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 15),
                _lineaInfo(Icons.location_on, "Av. Reforma #123, CDMX"),
                _lineaInfo(Icons.phone, "55-1234-5678"),
                _lineaInfo(Icons.email, "contacto@carlsjr.com.mx"),
              ],
            ),
          ),
          // Opciones de Navegación
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                children: [
                  _itemNav(context, Icons.home, "INICIO", '/'),
                  _itemNav(
                    context,
                    Icons.fastfood,
                    "HAMBURGUESAS",
                    '/hamburguesas',
                  ),
                  _itemNav(context, Icons.local_drink, "BEBIDAS", '/bebidas'),
                  _itemNav(context, Icons.shopping_cart, "CARRITO", '/carrito'),
                  _itemNav(
                    context,
                    Icons.contact_support,
                    "CONTACTO",
                    '/contacto',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para las líneas de texto en el header (Dirección, Tel, etc)
  Widget _lineaInfo(IconData icono, String texto) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icono, color: Colors.white70, size: 16),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(color: Colors.white70, fontSize: 13),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  // Widget para los botones del menú
  Widget _itemNav(
    BuildContext context,
    IconData icono,
    String nombre,
    String ruta,
  ) {
    return ListTile(
      leading: Icon(icono, color: Colors.black87),
      title: Text(
        nombre,
        style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.1),
      ),
      onTap: () {
        Navigator.pop(context); // Cierra el menú
        Navigator.pushReplacementNamed(context, ruta); // Cambia de página
      },
    );
  }
}
