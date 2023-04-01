import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTlrnRL03SeJm6mVcCBs75KLT2_al_SINlbg&usqp=CAU'),
                ),
                SizedBox(height: 10),
                Text(
                  'Nama : Dodi Al farisy',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 5),
                Text(
                  'NIM : 123200011',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileDetail()),
              );
            },
            child: Text('Detail'),
          ),
        ],
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profil'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTlrnRL03SeJm6mVcCBs75KLT2_al_SINlbg&usqp=CAU'),
            ),
            SizedBox(height: 10),
            Text(
              'Nama : Dodi Al farisy',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 5),
            Text(
              'NIM: 123200011',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Kelas: IF-A',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Tempat Lahir: Panyabungan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Tanggal Lahir: 29-05-2002',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Harapan/Cita-cita: cepat lulus...',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
