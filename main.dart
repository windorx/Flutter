import 'package:flutter/material.dart';

void main() {
  runApp(IMAXDentApp());
  
}

class IMAXDentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMAX Dent Curicó',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPhoneRow(), // Fila de teléfonos
            _buildWorkingHours(), // Fila de horario de atención
            _buildDentistImage(), // Imagen de dentistas
            _buildSectionTitle('Quienes somos'), // Título "Quienes somos"
            _buildImaxdentCenter(), // Título "Centro Radiológico Imaxdent"
            _buildMissionText(), // Texto de la visión y misión
            _buildFooter(), // Footer con dirección, contacto y correo
          ],
        ),
      ),
    );
  }

  // Función para la fila de teléfonos
  Widget _buildPhoneRow() {
    return Container(
      color: Colors.blue[900],
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildPhoneInfo('+56 9 1234 5678'),
          _buildPhoneInfo('+56 9 9876 5432'),
        ],
      ),
    );
  }

  // Widget para cada número de teléfono con ícono
  Widget _buildPhoneInfo(String phoneNumber) {
    return Row(
      children: [
        Icon(Icons.phone, color: Colors.white, size: 32), 
        SizedBox(width: 8), // Espaciado ampliado
        Text(
          phoneNumber,
          style: TextStyle(color: Colors.white, fontSize: 16), 
        ),
      ],
    );
  }

  // Función para la fila de horario de atención
  Widget _buildWorkingHours() {
    return Container(
      color: Colors.blue[900],
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.access_time, color: Colors.white, size: 32), 
          SizedBox(width: 8),
          Text(
            'Lunes a Viernes: 09:00 - 18:00',
            style: TextStyle(color: Colors.white, fontSize: 16), 
          ),
        ],
      ),
    );
  }

  // Función para la imagen relacionada con dentistas
  Widget _buildDentistImage() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Image.asset(
        'assets/dent.png', // Ruta a la imagen local
        fit: BoxFit.cover,
      ),
    );
  }

  // Función para la sección "Quienes somos"
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 28, 
          color: Colors.grey[700],
        ),
      ),
    );
  }

  // Función para el título "Centro Radiológico Imaxdent"
  Widget _buildImaxdentCenter() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Text(
        'Centro Radiológico Imaxdent',
        style: TextStyle(
          fontSize: 36, 
          color: Colors.blue[900],
        ),
      ),
    );
  }

  // Función para el texto de visión y misión
  Widget _buildMissionText() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Text(
        'Nuestra visión es posicionarnos en el medio Odontológico de la Región del Maule como la mejor alternativa en la prestación de servicios de imágenes digitales 2D y 3D, producto de nuestro servicio eficiente y de calidad. Estamos comprometidos con la excelencia a través de la innovación tecnológica y la atención de calidad.\n\n'
        'Imaxdent Curicó tiene como misión cumplir con un compromiso profesional y personal de desarrollar un servicio de imagenología digital; ayudando así, al diagnóstico en las diversas especialidades Odontológicas, a través de una óptima infraestructura, tecnología de punta y un grupo humano altamente calificado, con el objetivo de satisfacer completamente las necesidades de nuestros usuarios y profesionales derivadores, ayudando con ello a mejorar su calidad de vida. Somos protagonistas en Radiología Oral y Maxilofacial Digital especializada en la provincia de Curicó Chile y estamos en continuo perfeccionamiento de todas nuestras actividades.',
        style: TextStyle(
          fontSize: 16, 
          color: Colors.grey[700],
        ),
      ),
    );
  }

  // Función para el footer con dirección, contacto, y correo
  Widget _buildFooter() {
    return Container(
      color: Colors.blue[900],
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFooterItem(Icons.location_on, 'Dirección: Calle Falsa 123, Curicó, Chile'),
          _buildFooterItem(Icons.phone, 'Teléfono: +56 9 1234 5678'),
          _buildFooterItem(Icons.email, 'Correo: contacto@imaxdentcurico.cl'),
        ],
      ),
    );
  }

  // Widget reutilizable para cada elemento del footer
  Widget _buildFooterItem(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 32), 
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16), 
          ),
        ],
      ),
    );
  }
}
