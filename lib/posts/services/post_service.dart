import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class PostService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ✅ Fetch posts with pagination (for better efficiency)
  Future<List<DocumentSnapshot>> getPosts({DocumentSnapshot? lastDoc, int limit = 10}) async {
    Query query = _firestore.collection('posts').orderBy('createdAt', descending: true).limit(limit);

    if (lastDoc != null) {
      query = query.startAfterDocument(lastDoc);
    }

    QuerySnapshot snapshot = await query.get();
    return snapshot.docs;
  }

  // ✅ Create post method
  Future<void> createPost({
    required String text,
    required String authorId,
    required String username,
  }) async {
    try {
      await _firestore.collection('posts').add({
        'authorId': authorId,
        'username': username,
        'content': text, // 🔹 Changed from `description` to `content`
        'createdAt': FieldValue.serverTimestamp(), // 🔹 Firestore timestamp
      });
    } catch (e) {
      if (kDebugMode) {
        print("Error creating post: $e");
      }
    }
  }
}
