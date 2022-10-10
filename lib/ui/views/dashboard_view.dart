import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_ui_flutter/core/constans/colors_custom.dart';
import 'package:gojek_ui_flutter/main.dart';

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
                    height: 30,
                    width: 75,
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
      body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                prefixIcon: InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.search,
                                  ),
                                ),
                                hintText: 'Cari layanan, makanan, & tujuan'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: const NetworkImage(
                        'https://yt3.ggpht.com/QsCVkOQB_ULkoXPHeUJAFANf3K51nGqa4w17LnJFCh8-EgS3ykqeRYbsmVS4f_jSOfnNgKk-3tM=s900-c-k-c0x00ffffff-no-rj'),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset('assets/images/club.svg'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: colorBlue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorwhite),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/gopay.png',
                            ),
                            const Text(
                              'Rp10.000.000',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Klik & cek riwayat',
                              style:
                                  TextStyle(color: colorGreenTwo, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorwhite),
                      child: Center(
                        child: SvgPicture.asset('assets/images/up.svg'),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorwhite),
                      child: Center(
                        child: SvgPicture.asset('assets/images/plus.svg'),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorwhite),
                      child: Center(
                        child: Image.asset('assets/images/explore.png'),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
