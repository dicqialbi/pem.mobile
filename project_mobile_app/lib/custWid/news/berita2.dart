import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/news/cardBerita2.dart';

class MyNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MyBeritaLengkap> widgets = [
      MyBeritaLengkap(
          AssetImage("images/news.jpeg"),
          "17 Juli 2020",
          "Pemerintah Desa Suka Maju Bagi Bagi Sembako",
          "Presiden Joko Widodo (Jokowi) mengatakan pembagian paket sembako dan Kartu Prakerja akan dilakukan oleh Menteri Sosial Juliari P. Batubara. Pembagian ini sudah mengikuti ketentuan tambah anggaran bagi masing-masing program."),
      MyBeritaLengkap(
          AssetImage("images/demo.jpg"),
          "5 November 2020",
          "Demo di Kedubes Prancis Bubar, Jalan MH Thamrin ke Bundaran HI Tersendat",
          "Pantauan detikcom, Jumat (6/11/2020), satu mobil komando dengan spanduk Pemuda Organization of Islamic Cooperation (OIC Youth) Indonesia datang dari arah Patung Kuda Arjuna Wiwaha ke Jalan MH Thamrin, tepatnya di dekat halte TransJakarta Sarinah sekitar pukul 13.19 WIB. Mobil komando ini datang tanpa diikuti massa aksi. Tak lama kemudian, massa pun tiba di Jalan MH Thamrin, tepatnya di dekat halte TransJakarta Sarinah sekitar pukul 14.05 WIB dengan memakai 1 bus. Massa yang datang langsung berdiri di samping mobil komando dan membentuk barisan. Massa pun membawa bendera OIC Youth Indonesia, poster Macron yang di wajahnya terdapat gambar jejak kaki, dan spanduk bertulisan 'OIC YOUTH INDONESIA MENGECAM PENGHINA ISLAM'. Adapun poster dipegang massa dan ditaruh di jalan. Orator pun bergantian berorasi dari atas mobil komando. Polisi sudah melakukan penjagaan dan pengaturan lalu lintas di sekitar lokasi. Pagar kawat berduri, beton pembatas, dan road barrier sudah terpasang. Namun pagar kawat berduri yang terpasang hanya setengah badan jalan. Sementara itu, arus lalu lintas di Jalan MH Thamrin dari Patung Kuda menuju Bundaran Hotel Indonesia (HI) masih bisa dilintasi kendaraan. Kendaraan yang melintas di Jalan MH Thamrin dari arah Patung Kuda menuju Bundaran HI hanya tersendat menjelang lokasi demonstrasi. Terlihat arus lalu lintas dari arah sebaliknya Senayan menuju Patung Kuda ramai lancar."),
      MyBeritaLengkap(
          AssetImage("images/telk.png"),
          "15 Juni 2020",
          "Telkomsel Bagi-bagi Paket Internet Murah Sampai Kuota Gratis, 10 GB Rp 2 Ribuan",
          "Segera daftarkan bro kode promo Paket Internet Murah 30GB Cuma Rp 5 Ribuan, kini ada Promo Telkomsel 10GB Cuma Rp 2.700 dan 25GB Cuma Rp 10 Ribu. Beragam Promo Telkomsel dan Paket Internet Murah dan Kuota Gratis dari Telkomsel.")
    ];
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);
    return PageView.builder(
        onPageChanged: (index) {
          print("Berita ke - " + (index + 1).toString());
        },
        controller: controller,
        itemCount: widgets.length,
        itemBuilder: (context, index) => Center(
              child: (widgets[index]),
            ));
  }
}
