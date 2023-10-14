import 'package:flutter/material.dart';
import 'package:flutter_application_1/api%20integretion/api%20integration%20using%20dio/controller/datacontroller.dart';
import 'package:flutter_application_1/api%20integretion/api%20integration%20using%20dio/views/detaildata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void main() {
  runApp(GetMaterialApp(
    home: Datahome(),
  ));
}

class Datahome extends StatelessWidget {
  DataController controller = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data home'),
      ),
      body: Obx(() => SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: controller.isNetConnected.value
                ? (controller.isLoading.value ? loadanimation() : getData())
                : noInternet(context),
          )),
      floatingActionButton:
          Obx(() => controller.isNetConnected.value ? buildFAB() : Container()),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListatDown.value
            ? controller.scrollToUp()
            : controller.scrollToDown();
      },
      backgroundColor: Colors.blue,
      child: FaIcon(controller.isListatDown.value
          ? FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown),
    );
  }

  Center loadanimation() {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset("assets/anim/anim.json"),
      ),
    );
  }

  RefreshIndicator getData() {
    return RefreshIndicator(
        child: ScrollablePositionedList.builder(
            itemScrollController: controller.itemController,
            physics: BouncingScrollPhysics(),
            itemCount: controller.datas.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Get.to(detailData(index: index)),
                child: Card(
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.brown),
                      child: Center(
                        child: Text(controller.datas[index].id.toString()),
                      ),
                    ),
                    title: Text(
                      controller.datas[index].title!,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      controller.datas[index].body!,
                      style: const TextStyle(
                          fontSize: 25, fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              );
            }),
        onRefresh: () {
          return controller.fetchData();
        });
  }

  Center noInternet(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Lottie.asset("assets/anim/anim.json"),
          ),
          MaterialButton(
            onPressed: () async {
              if (await InternetConnectionChecker().hasConnection == true) {
                controller.fetchData();
              } else {
                showTopSnackBar(
                    Overlay.of(context),
                    const CustomSnackBar.error(
                      message:
                          "Something went wrong. Please check your credentials and try again",
                    ));
              }
            },
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
