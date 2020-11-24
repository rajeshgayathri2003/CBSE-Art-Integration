class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/tour1.jpg',
    name: 'Rishikesh-Kedarnath-Badrinath',
    address: 'Departure from Rishikesh',
    price: 26640,
  ),
  Hotel(
    imageUrl: 'assets/gangotri.jpg',
    name: 'Rishikesh-Yamunotri-Gangotri',
    address: 'Departure from Rishikesh',
    price: 16700,
  ),
  Hotel(
    imageUrl: 'assets/tour3.jpg',
    name: 'Haridwar-Kedarnath-Badrinath',
    address: 'Departure from Haridwar',
    price: 25800,
  ),
  Hotel(
    imageUrl: 'assets/tour4.jpg',
    name: 'Jim Corbett-Nanda Devi-Valley of Flowers',
    address: 'Departure from Nainital',
    price: 27800,
  ),
  Hotel(
    imageUrl: 'assets/manasa.jpg',
    name: 'Manasa Devi-Chandi Devi-Gangadhwara',
    address: 'Departure from Haridwar',
    price: 28900,
  ),
];
