import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'favourite_controller.dart';

class FavouriteAppView extends StatefulWidget {
  const FavouriteAppView({super.key});

  @override
  State<FavouriteAppView> createState() => _FavouriteAppViewState();
}

class _FavouriteAppViewState extends State<FavouriteAppView> {
  final FavouriteController favouriteappcontroller =
      Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX Example Three View'),
        ),
        body: ListView.builder(
          itemCount: favouriteappcontroller.favouritecolors.length,
          itemBuilder: (context, index) {
          
          return ListTile(
            onTap: (){
              if (favouriteappcontroller.favouritecolors.contains(favouriteappcontroller.colors[index])) {
                favouriteappcontroller.addtofavourite(favouriteappcontroller.colors[index].toString());
              }else{
                favouriteappcontroller.removefromfavourite(favouriteappcontroller.colors[index].toString());
              }
            },
            title: Text('this is tile'),
            trailing: Obx((){
              return Icon(
                Icons.favorite,
                color: favouriteappcontroller.favouritecolors.contains(favouriteappcontroller.colors[index].toString()) ? Colors.red : Colors.black);
            }
            ),
          );
        }));
  }
}
