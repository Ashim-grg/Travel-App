class Categories {
  final String category;


  Categories({required this.category});

  static List<Categories> categories = [
    Categories(category: 'All'),
    Categories(category: 'Hills'),
    Categories(category: 'Mountains'),
    Categories(category: 'Urban'),
    Categories(category: 'Hot'),
  ];
}