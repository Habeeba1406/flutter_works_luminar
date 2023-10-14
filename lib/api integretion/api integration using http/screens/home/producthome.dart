import 'package:flutter/material.dart';
import 'package:flutter_application_1/api%20integretion/api%20integration%20using%20http/controller/productcontroller.dart';
import 'package:flutter_application_1/api%20integretion/api%20integration%20using%20http/screens/home/widgets/producttile.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: ProductHome(),
  ));
}

class ProductHome extends StatelessWidget {
  final productcontroller productController = Get.put(productcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: SizedBox(
        child: Obx(() {
          // Obx is to make the widget observable
          if (productController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ProductTile(productController.productList[index]);
                });
          }
        }),
      ),
    );
  }
}
