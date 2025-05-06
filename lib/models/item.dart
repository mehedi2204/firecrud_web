class Item {
  final String id;
  final String text;
  final String description;
  final String imageUrl;

  Item({
    required this.id,
    required this.text,
    required this.description,
    required this.imageUrl,
  });

  // Convert item data from Firebase snapshot
  factory Item.fromMap(Map<String, dynamic> map, String id) {
    return Item(
      id: id,
      text: map['text'],
      description: map['description'],
      imageUrl: map['imageUrl'],
    );
  }

  // Convert item data to a map for storing in Firebase
  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'description': description,
      'imageUrl': imageUrl,
    };
  }
}
