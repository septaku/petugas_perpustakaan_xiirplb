import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_xiirplb/app/routes/app_pages.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
      body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${state[index].book?.judul}"),
              subtitle: Text("Dipinjam oleh ${state[index].user?.nama}"),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
      },
      ))
    );
  }
}
