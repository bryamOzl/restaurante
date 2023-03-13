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
      id: 4,
      nombre: 'Llapingacho',
      precio: 5.00,
      imagen: 'llapingacho.jpg',
      descripcion: 'Plato cuencano'),
  new Carta(
      id: 5,
      nombre: 'Flautas',
      precio: 3.00,
      imagen: 'flautas.jpeg',
      descripcion: 'Plato mexicano'),
  new Carta(
      id: 6,
      nombre: 'Seco de Pollo',
      precio: 2.00,
      imagen: 'seco_pollo.jpeg',
      descripcion: 'Plato ecuatoriano')
];

final bebidas = [
  new Carta(
      id: 7,
      nombre: 'Agua',
      precio: 0.50,
      imagen: 'agua.png',
      descripcion: 'Bebida....'),
  new Carta(
      id: 8,
      nombre: 'Gaseosa',
      precio: 0.75,
      imagen: 'gaseosa.png',
      descripcion: 'Bebida.....'),
  new Carta(
      id: 9,
      nombre: 'Jugo',
      precio: 1.00,
      imagen: 'jugo.jpg',
      descripcion: 'Bebida......'),
  new Carta(
      id: 10,
      nombre: 'Te',
      precio: 1.00,
      imagen: 'te.png',
      descripcion: 'Bebida.....')
];

final postres = [
  new Carta(
      id: 11,
      nombre: 'Cheaskake',
      precio: 1.50,
      imagen: 'cheaskake.jpg',
      descripcion: 'Postre....'),
  new Carta(
      id: 12,
      nombre: 'Helado',
      precio: 1.75,
      imagen: 'helado.png',
      descripcion: 'Postre.....'),
  new Carta(
      id: 13,
      nombre: 'Pastel',
      precio: 2.00,
      imagen: 'pastel.jpeg',
      descripcion: 'Postre......'),
  new Carta(
      id: 14,
      nombre: 'Pie',
      precio: 1.00,
      imagen: 'pie.jpg',
      descripcion: 'Postre.....')
];
