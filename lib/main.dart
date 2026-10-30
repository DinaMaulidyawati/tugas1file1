
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Stateless',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HalamanStateless(),
    );
  }
}

// Widget KartuMahasiswa
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: Text(
          nama,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('NIM: $nim\nProdi: $prodi'),
      ),
    );
  }
}

// Halaman Stateless
class HalamanStateless extends StatelessWidget {
  const HalamanStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // BAGIAN 1: TIGA KARTU MAHASISWA
            const SizedBox(height: 15),

            const Text(
              'Daftar Mahasiswa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const KartuMahasiswa(
              nama: 'Dina Maulidyawati',
              nim: '3012310008',
              prodi: 'Informatika',
            ),

            const KartuMahasiswa(
              nama: 'Davina Karamoy',
              nim: '3012318008',
              prodi: 'Informatika',
            ),

            const KartuMahasiswa(
              nama: 'Devano Danendra',
              nim: '3012319009',
              prodi: 'Informatika',
            ),

            const SizedBox(height: 25),

            const Divider(thickness: 1),

            // BAGIAN 2: HALAMAN PROFIL
            const SizedBox(height: 15),

            const Text(
              'Profil Saya',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Foto profil menggunakan CircleAvatar
            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 65,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            // Nama mahasiswa
            const Text(
              'Dina Maulidyawati',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              'Mahasiswi Informatika',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // Container dan Row untuk ikon kontak
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.email, color: Colors.blue),
                      SizedBox(height: 5),
                      Text('Email'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.green),
                      SizedBox(height: 5),
                      Text('Telepon'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(height: 5),
                      Text('Alamat'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
