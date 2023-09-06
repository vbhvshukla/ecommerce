import 'package:ecom/consts/consts.dart';

Widget loadingIndicator(){
  return CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation(redColor)
  );
}