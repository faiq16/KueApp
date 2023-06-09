class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}
 final List<Cake> listCakes = [
  Cake(id: 1, name: 'Banana Cake', price: '79.000', imageUrl: '', isFavorite: true, subMenu: 'cake_box'),
  Cake(id: 2, name: 'Coffe Cake Pudding', price: '89.000', imageUrl: '', isFavorite: false, subMenu: 'cake_box'),
  Cake(id: 3, name: 'Bolu Gula Aren', price: '90.000', imageUrl: '', isFavorite: false, subMenu: 'cake_box'),
  Cake(id: 4, name: 'Pudding Tiramisu', price: '75.000', imageUrl: '', isFavorite: true, subMenu: 'cake_box'),
  Cake(id: 5, name: 'Brownies Keju', price: '89.000', imageUrl: '', isFavorite: false, subMenu: 'cake_box'),
  Cake(id: 6, name: 'Brownies Almond', price: '88.000', imageUrl: '', isFavorite: false, subMenu: 'cake_box'),
 ];