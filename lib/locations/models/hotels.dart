class Hotels {
  String hotelname;
  String description;
  int price;
  List<String> reviews;
  String imagePath;

  Hotels({
    required this.hotelname,
    required this.description,
    required this.price,
    required this.reviews,
    required this.imagePath,
    });

  static List<Hotels> hotelsList = [
    Hotels(
      hotelname: 'Hotel Phewa', 
      description: 'A cozy lakeside retreat offering stunning views of Phewa Lake, perfect for relaxation and scenic beauty. It features comfortable rooms and modern amenities.', 
      price: 600, 
      reviews: ['#lakeview','#calm'],
      imagePath: 'assets/images/hotels/hotel1.png'
    ),
    Hotels(
      hotelname: 'Hotel Maharaja', 
      description: ' A luxurious hotel with royal decor and top-notch services, located in the heart of the city, ideal for both business and leisure travelers.', 
      price: 2000, 
      reviews:  ['#lakeview','#calm'],
      imagePath: 'assets/images/hotels/hotel2.png'
    ),
    Hotels(
      hotelname: 'Lake restaurant and Bar', 
      description: 'A charming dining spot with a breathtaking lake view,serving a variety of delicious dishes and refreshing drinks in a serene atmosphere.', 
      price: 2000, 
      reviews:  ['#lakeview','#calm'],
      imagePath: 'assets/images/hotels/hotel3.png'
    ),
  ];
}