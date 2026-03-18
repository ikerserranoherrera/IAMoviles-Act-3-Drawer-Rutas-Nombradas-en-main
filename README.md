# myapp
<img width="446" height="776" alt="image" src="https://github.com/user-attachments/assets/b2df42b5-585f-4600-a9b8-8e6d66c48e9b" />
<img width="437" height="755" alt="image" src="https://github.com/user-attachments/assets/c04ad090-646c-47ae-aa03-2d0eb8c001b4" />
<img width="443" height="773" alt="image" src="https://github.com/user-attachments/assets/dcd0b652-4e0b-4ec2-a535-932938bc5431" />
<img width="465" height="790" alt="image" src="https://github.com/user-attachments/assets/8a008470-85ec-4aeb-b693-04bc5f0a720e" />
<img width="446" height="771" alt="image" src="https://github.com/user-attachments/assets/14be2d30-0612-4c2d-8fdc-eca19ed43ea7" />
<img width="270" height="463" alt="image" src="https://github.com/user-attachments/assets/bd0c2ce5-e5a3-4160-9e64-835499cb92e3" />
<img width="1223" height="797" alt="image" src="https://github.com/user-attachments/assets/74f06df1-116e-451e-a97f-9643f8726c17" />
<img width="1223" height="795" alt="image" src="https://github.com/user-attachments/assets/99d14024-e2dd-4a11-a3e7-236b28289d8e" />
<img width="1223" height="799" alt="image" src="https://github.com/user-attachments/assets/5960f076-11ac-481f-9e1d-3b68a1d1f009" />
<img width="1230" height="795" alt="image" src="https://github.com/user-attachments/assets/aaa2a6ed-ed84-4061-b3d6-1295b3279a3b" />
<img width="1236" height="796" alt="image" src="https://github.com/user-attachments/assets/a1fba6cb-475a-4e64-bb8e-91f9443148e5" />
<img width="1227" height="791" alt="image" src="https://github.com/user-attachments/assets/e659f876-0e6f-4c57-a3b3-ee5f6d37f543" />

#Prompt
Prompt para Generar la App Carl's Jr. en Flutter
Actúa como un desarrollador experto en Flutter. Genera una aplicación móvil y web inspirada en la estética de Carl's Jr. (colores Negro #111111 y Amarillo #FFC107).

Estructura Técnica:

Archivo main.dart: >    - Configura un MaterialApp con Rutas Nombradas para: / (Inicio), /hamburguesas, /bebidas, /carrito, y /contacto.

Define un ThemeData con AppBar negra y texto amarillo.

Crea una clase MenuLateral (Drawer) pública y reutilizable.

Diseño del Drawer (Menú Hamburguesa):

Debe tener un encabezado (Container) con fondo negro y borde inferior amarillo de 4px.

Contenido del Header: Imagen Avatar circular (desde red), Nombre de la empresa ("Carl's Jr. México"), Dirección, Teléfono y Correo.

IMPORTANTE: Usa SizedBox y Padding para que la información de contacto no se vea amontonada ni se corte en la versión Web o Móvil. Los textos de contacto deben tener iconos (Icons.location_on, phone, email).

Ancho: Si la pantalla es > 600px (Web), limita el ancho del Drawer a 350px.

Páginas Independientes:

Crea 5 clases (Inicio, Hamburguesas, Bebidas, Carrito, Contacto) en archivos separados (simulados o reales).

Cada página debe tener un Scaffold con el MenuLateral y un AppBar centrado.

El body debe contener un Center con una imagen de 200x200 px traída desde GitHub (URL de ejemplo).

En la versión Web, el contenido del body debe estar dentro de un ConstrainedBox con maxWidth: 800 para evitar que se estire demasiado.

Navegación: Usa Navigator.pushReplacementNamed para moverte entre secciones desde el Drawer.

Restricción: No utilices UserAccountsDrawerHeader estándar, crea uno personalizado con Column para tener control total del espacio y evitar que el texto se vea pequeño o encimado.
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
