class Ramen {
  final String image, name;
  final int id, price;

  Ramen({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}

List<Ramen> ramens = [
  Ramen(
      id: 1,
      name: "Kurumen ramen",
      price: 12000,
      image: "assets/images/ramens/kurumen.jpg"),
  Ramen(
    id: 2,
    name: "Hakata ramen",
    price: 15000,
    image: "assets/images/ramens/hakata.jpg",
  ),
  Ramen(
    id: 3,
    name: "Sapporo miso",
    price: 13000,
    image: "assets/images/ramens/sapporo.jpg",
  ),
  Ramen(
    id: 4,
    name: "Kitakata ramen",
    price: 15000,
    image: "assets/images/ramens/kitakata.jpg",
  ),
  Ramen(
    id: 5,
    name: "Hakodate ramen",
    price: 14000,
    image: "assets/images/ramens/hakodate.jpg",
  ),
  Ramen(
    id: 6,
    name: "Wakayama ramen",
    price: 13000,
    image: "assets/images/ramens/wakayama.jpg",
  )
];
