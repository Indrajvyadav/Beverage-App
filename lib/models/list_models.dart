class ListModel {
  final String name;
  final String description;
  final double rating;
  final int numberOfPurchases;
  final String imagePath;

  ListModel({
    required this.name,
    required this.description,
    required this.rating,
    required this.numberOfPurchases,
    required this.imagePath,
  });
}

final List<ListModel> listModels = [
  ListModel(
      name: 'Mocha',
      description:
          "A hot coffee drink made with espresso, steamed milk, and foam. It's known for its balanced flavor, rich texture.",
      rating: 4.9,
      numberOfPurchases: 458,
      imagePath: 'assets/list/cappuccino.jpg'),
  ListModel(
      name: 'Lattè',
      description:
          'A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
      rating: 4.9,
      numberOfPurchases: 458,
      imagePath: 'assets/list/latte.png'),
  ListModel(
      name: 'Espresso',
      description:
          "A concentrated coffee drink made by forcing high-pressure hot water through finely ground coffee beans.",
      rating: 4.5,
      numberOfPurchases: 300,
      imagePath: 'assets/list/espresso.jpeg'),
  ListModel(
      name: 'Ice Caffè',
      description:
          "A cold coffee drink that's usually made with hot espresso, milk, and ice.",
      rating: 4.6,
      numberOfPurchases: 350,
      imagePath: 'assets/list/ice.jpeg'),
  ListModel(
      name: 'Doppio',
      description:
          "A double shot which is extracted using double the amount of ground coffee in a larger-sized portafilter basket.",
      rating: 3.5,
      numberOfPurchases: 200,
      imagePath: 'assets/list/Doppio.jpg')
];
