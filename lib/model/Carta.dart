class Carta {
  final int id;
  final String nombre;
  final double precio;
  final String imagen;
  final String descripcion;

  const Carta(
      {required this.id,
      required this.nombre,
      required this.precio,
      required this.imagen,
      required this.descripcion});
}

final platos = [
  new Carta(
      id: 1,
      nombre: 'Burritos',
      precio: 2.50,
      imagen: 'burritos.jpeg',
      descripcion: 'Plato mexicano'),
  new Carta(
      id: 2,
      nombre: 'Ceviche de Camaron',
      precio: 3.50,
      imagen: 'ceviche_camaron.jpg',
      descripcion: 'Plato ecuatoriano'),
  new Carta(
      id: 3,
      nombre: 'Encebollado',
      precio: 2.00,
      imagen: 'encebollado.jpg',
      descripcion: 'Plato ecuatoriano'),
  new Carta(
      id: 1,
      nombre: 'Llapingacho',
      precio: 5.00,
      imagen: 'llapingacho.jpeg',
      descripcion: 'Plato cuencano')
];

final bebidas = [
  new Carta(
      id: 1,
      nombre: 'Agua',
      precio: 0.50,
      imagen: 'agua.png',
      descripcion: 'Bebida....'),
  new Carta(
      id: 2,
      nombre: 'Gaseosa',
      precio: 0.75,
      imagen: 'gaseosa.png',
      descripcion: 'Bebida.....'),
  new Carta(
      id: 3,
      nombre: 'Jugo',
      precio: 1.00,
      imagen: 'jugo.jpg',
      descripcion: 'Bebida......'),
  new Carta(
      id: 1,
      nombre: 'Te',
      precio: 1.00,
      imagen: 'te.png',
      descripcion: 'Bebida.....')
];

final postres = [
  new Carta(
      id: 1,
      nombre: 'Cheaskake',
      precio: 1.50,
      imagen: 'cheaskake.jpg',
      descripcion: 'Postre....'),
  new Carta(
      id: 2,
      nombre: 'Helado',
      precio: 1.75,
      imagen: 'helado.png',
      descripcion: 'Postre.....'),
  new Carta(
      id: 3,
      nombre: 'Pastel',
      precio: 2.00,
      imagen: 'pastel.jpeg',
      descripcion: 'Postre......'),
  new Carta(
      id: 1,
      nombre: 'Pie',
      precio: 1.00,
      imagen: 'pie.png',
      descripcion: 'Postre.....')
];
