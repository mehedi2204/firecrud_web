import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../models/item.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // Add Item to Firestore
  Future<void> addItem(String text, String description, Uint8List imageBytes, String fileName) async {
    try {
      // Upload Image
      final imageRef = _storage.ref().child('images/$fileName');
      await imageRef.putData(imageBytes);
      final imageUrl = await imageRef.getDownloadURL();

      // Save item in Firestore
      final item = Item(
        id: '',
        text: text,
        description: description,
        imageUrl: imageUrl,
      );

      await _firestore.collection('items').add(item.toMap());
    } catch (e) {
      print("Error adding item: $e");
    }
  }

  // Update Item in Firestore
  Future<void> updateItem(String id, String text, String description) async {
    try {
      await _firestore.collection('items').doc(id).update({
        'text': text,
        'description': description,
      });
    } catch (e) {
      print("Error updating item: $e");
    }
  }

  // Delete Item from Firestore
  Future<void> deleteItem(String id) async {
    try {
      await _firestore.collection('items').doc(id).delete();
    } catch (e) {
      print("Error deleting item: $e");
    }
  }

  // Get all Items from Firestore
  Stream<List<Item>> getItems() {
    return _firestore.collection('items').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => Item.fromMap(doc.data(), doc.id))
          .toList();
    });
  }
}
