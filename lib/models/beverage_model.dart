class Beverage {
  final String name;
  final double rating;
  final int numberOfPurchases;
  final String imagePath;

  Beverage({
    required this.name,
    required this.rating,
    required this.numberOfPurchases,
    required this.imagePath,
  });
}

final List<Beverage> beverages = [
  Beverage(
      name: 'Hot Cappuccino',
      rating: 4.9,
      numberOfPurchases: 458,
      imagePath: 'assets/coffee/cappuccino.png'),
  Beverage(
      name: 'Lattè',
      rating: 4.9,
      numberOfPurchases: 458,
      imagePath: 'assets/coffee/latte.png'),
  Beverage(
      name: 'Espresso',
      rating: 4.5,
      numberOfPurchases: 300,
      imagePath: 'assets/coffee/espresso.png'),
  Beverage(
      name: 'Iced Coffee',
      rating: 4.6,
      numberOfPurchases: 350,
      imagePath: 'assets/coffee/iced_coffee.png'),
  Beverage(
      name: 'Doppio',
      rating: 3.5,
      numberOfPurchases: 200,
      imagePath: 'assets/coffee/doppio.png')
];
