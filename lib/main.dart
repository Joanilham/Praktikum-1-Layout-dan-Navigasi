import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joan_2077',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Selamat Datang'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/1.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'kawah ijen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Text(
              'Banyuwangi, Jawa Timur',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star,
        color: Colors.red,
      ),
      const Text('4,1'),
    ],
  ),
);

Widget buttonSection = Container(
  padding: const EdgeInsets.symmetric(vertical: 16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Icons.call, 'CALL'),
      _buildButtonColumn(Icons.near_me, 'ROUTE'),
      _buildButtonColumn(Icons.share, 'SHARE'),
    ],
  ),
);


Column _buildButtonColumn(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.blue),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.blue,
        ),
      ),
    ],
  );
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
'Kawah Ijen adalah gunung berapi aktif yang terletak di Kabupaten Banyuwangi, Jawa Timur,'
'dan terkenal karena danau belerangnya yang asam, kedalaman 200 meter, serta fenomena "blue fire'
'atau api biru yang terlihat di malam hari. Puncak gunung mencapai ketinggian 2.443 meter'
'di atas permukaan laut, dan kawasan ini merupakan cagar biosfer dunia yang populer di kalangan wisatawan internasional.',
    softWrap: true,
  ),
);

