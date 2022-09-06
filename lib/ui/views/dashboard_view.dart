import 'package:flutter/material.dart';
import 'package:gojek_ui_flutter/core/constans/colors_custom.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: colorGreenOne,
          title: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: colorGreenTwo),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colorwhite),
                    child: Center(
                      child: Text(
                        'Beranda',
                        style: TextStyle(fontSize: 12, color: colorGreenTwo),
                      ),
                    ),
                  ),
                  const Text(
                    'Promo',
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    'Pesanan',
                    style: TextStyle(fontSize: 12),
                  ),
                  const Text(
                    'Chat',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          elevation: 0),
      body: const Center(
        child: Text('Gojek Indonesia'),
      ),
    );
  }
}
