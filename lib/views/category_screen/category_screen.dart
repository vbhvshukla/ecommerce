import 'package:ecom/consts/consts.dart';
import 'package:ecom/controllers/product_controller.dart';
import 'package:ecom/views/category_screen/category_details.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProductController());
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200,
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(categoryImages[index],height: 120,width: 200,fit: BoxFit.cover),
                  10.heightBox,
                  "${categoriesList[index]}".text.align(TextAlign.center).color(darkFontGrey).make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
              .onTap(() {
                controller.getSubCategories(categoriesList[index]);
                Get.to(()=>CategoryDetails(title: categoriesList[index]));
              });
            }),
      ),
    ));
  }
}
