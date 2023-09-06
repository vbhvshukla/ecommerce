import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom/consts/consts.dart';
import 'package:ecom/controllers/auth_controller.dart';
import 'package:ecom/controllers/profile_controller.dart';
import 'package:ecom/services/firestore_services.dart';
import 'package:ecom/views/auth_screen/login_screen.dart';
import 'package:ecom/views/profile_screen/components/details_card.dart';
import 'package:ecom/views/profile_screen/edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return bgWidget(
        child: Scaffold(
            body: StreamBuilder(
      stream: FireStoreServices.getUser(currentUser!.uid),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(redColor)),
          );
        } else {
          var data = snapshot.data!.docs[0];
          return SafeArea(
              child: Column(
            children: [
              //Edit profile button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    )).onTap(() {
                  controller.nameController.text = data['name'];
                  //controller.passController.text = data['password'];
                  Get.to(() => EditProfileScreen(data: data));
                }),
              ),

              //User Details Section

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    data['imageUrl'] == '' ?
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make() :
                    Image.network(
                      data['imageUrl'],
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "${data['name']}".text.fontFamily(semibold).white.make(),
                        5.heightBox,
                        "${data['email']}".text.white.make(),
                      ],
                    )),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                          color: whiteColor,
                        )),
                        onPressed: () async {
                          await Get.put(AuthController())
                              .signoutMethod(context);
                          Get.offAll(() => const LoginScreen());
                        },
                        child: logout.text.fontFamily(semibold).white.make()),
                  ],
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  detailsCard(
                      count: "${data['cart_count']}",
                      title: "in your cart",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: "${data['wishlist_count']}",
                      title: "in your wishlist",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: "${data['order_count']}",
                      title: "in your orders",
                      width: context.screenWidth / 3.4),
                ],
              ),
              // Buttons section
              //40.heightBox,

              ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.asset(
                            profileButtonsIcon[index],
                            width: 22,
                          ),
                          title: profileButtonsList[index]
                              .text
                              .color(darkFontGrey)
                              .make(),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: lightGrey,
                        );
                      },
                      itemCount: profileButtonsList.length)
                  .box
                  .white
                  .rounded
                  .margin(EdgeInsets.all(12))
                  .padding(EdgeInsets.symmetric(horizontal: 16))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make()
            ],
          ));
        }
      },
    )));
  }
}
