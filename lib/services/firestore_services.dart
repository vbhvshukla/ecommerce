import 'package:ecom/consts/consts.dart';

class FireStoreServices {
  //Get users data
  static getUser(uid){
    return firestore.collection(usersCollection).where('id',isEqualTo: uid).snapshots();
  }
  //Get products according to product
  static getProducts(category){
    return firestore.collection(productsCollection).where('p_category',isEqualTo: category).snapshots();
  }
}