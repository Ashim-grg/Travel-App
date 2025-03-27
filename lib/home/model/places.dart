class Places {
  final String imagePath; 
  final String placeName;
  final String location;

  Places({
    required this.imagePath,
    required this.placeName,
    required this.location,
  });

  static List<Places> travelPlaces = [
    Places(
      imagePath: 'assets/images/places/place1.png', 
      placeName: 'Phewa Lake', 
      location: 'Pokhara'
    ),
    Places(
      imagePath: 'assets/images/places/place2.png', 
      placeName: 'Hawaii Beach', 
      location: 'Hawaii'
    ),
    Places(
      imagePath: 'assets/images/places/place3.jpeg', 
      placeName: 'Taj Mahal', 
      location: 'Agra'
    ),
  ];
}