class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'assets/images/nick-fury.jpg',
  isOnline: true,
);

// USERS
final User DiopFatoumata = User(
  id: 1,
  name: 'Diop Fatoumata',
  imageUrl: 'assets/images/face1.jpg',
  isOnline: true,
);
final User NdiayeBaba = User(
  id: 2,
  name: 'Ndiaye Baba',
  imageUrl: 'assets/images/face2.jpg',
  isOnline: true,
);
final User KonateAminata = User(
  id: 3,
  name: 'Konaté Aminata',
  imageUrl: 'assets/images/face3.jpg',
  isOnline: false,
);
final User SowMamadou = User(
  id: 4,
  name: 'Sow Mamadou',
  imageUrl: 'assets/images/face4.jpg',
  isOnline: false,
);
final User DialloAicha = User(
  id: 5,
  name: 'Diallo Aicha',
  imageUrl: 'assets/images/face5.jpg',
  isOnline: true,
);
final User TraoreMamadou = User(
  id: 6,
  name: 'Traoré Mamadou',
  imageUrl: 'assets/images/face6.jpg',
  isOnline: false,
);
final User KoneAminata = User(
  id: 7,
  name: 'Kone Aminata',
  imageUrl: 'assets/images/back1.jpg',
  isOnline: false,
);
final User ToureKwame = User(
  id: 8,
  name: 'Toure Kwame',
  imageUrl: 'assets/images/profil3.jpg',
  isOnline: false,
);