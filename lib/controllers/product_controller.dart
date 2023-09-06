import 'package:ecom/consts/consts.dart';
import 'package:ecom/models/category_model.dart';
import 'package:flutter/services.dart';

class ProductController extends GetxController{
  var subcat = [];
  var colorIndex = 0.obs;
  var quantity = 0.obs;
  var totalPrice = 0.obs;
  getSubCategories(title)async{
    subcat.clear();
    var data = await rootBundle.loadString("lib/services/category_model.json");
    var decoded = categoryModelFromJson(data);
    var s = decoded.categories.where((element) => element.name == title).toList();
    for(var e in s[0].subcategory){
      subcat.add(e);
    }
  }
  changeColorIndex(index){
    colorIndex.value = index;
  }
  increaseQuantity(totalQuantity){
    if(quantity<totalQuantity){
      quantity.value++;
    }
  }
  decreaseQuantity(){
    if(quantity.value > 0){
      quantity.value--;
    }
  }
  calculateTotalPrice(price){
    totalPrice.value =price * quantity.value;
  }
}