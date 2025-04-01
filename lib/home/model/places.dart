class Places {
  final String imagePath; 
  final String placeName;
  final String location;
  final String description;

  Places({
    required this.imagePath,
    required this.placeName,
    required this.location,
    required this.description
  });

  static List<Places> travelPlaces = [
    Places(
      imagePath: 'assets/images/places/place1.png', 
      placeName: 'Phewa Lake', 
      location: 'Pokhara',
      description:'''Phewa Lake or Phewa Tal is a freshwater lake in Nepal formerly 
      called Baidam Tal located in the south of the 
      Pokhara Valley that includes Pokhara city and parts of Sarangkot and Kaskikot.'''
    ),
    Places(
      imagePath: 'assets/images/places/place2.png', 
      placeName: 'Hawaii Beach', 
      location: 'Hawaii',
      description: '''Hawaii is an island state of the United States,
       in the Pacific Ocean about 2,000 miles southwest of the U.S. mainland. 
       One of the two non-contiguous U.S. states, it is the only state not 
       on the North American mainland,the only state that is an archipelago, 
       and the only state in the tropics.
        '''
    ),
    Places(
      imagePath: 'assets/images/places/place3.jpeg', 
      placeName: 'Taj Mahal', 
      location: 'Agra',
      description: '''The Taj Mahal is an ivory-white marble mausoleum on the right 
      bank of the river Yamuna in Agra, Uttar Pradesh, India. It was 
      commissioned in 1631 by the fifth Mughal emperor, Shah Jahan to house 
      the tomb of his beloved wife, Mumtaz Mahal; it also houses the tomb of 
      Shah Jahan himself.'''
    ),
  ];
}