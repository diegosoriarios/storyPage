import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color(0xFF1b1e44),
      ),
      body: Center(
        child: ListView(
          padding: new EdgeInsets.all(10.0),
          children: [
            CircleAvatar(
              minRadius: 75.0,
            ),
            Divider(),
            _tile('Nome', 'Diego Soria Rios', Icons.person),
            _tile('E-mail', 'diegosoriarios@gmial.com', Icons.email),
            _tile('Telefone', '54 99190 7331', Icons.phone),
            _tile('Location', 'Passo Fundo', Icons.location_on),
            Divider(),
            _tile('Github', '@diegosoriarios', Icons.link),
            _tile('Instagram', '@diegosoriarios', Icons.link),
            _tile('Twitter', '@diegosoriarios', Icons.link),
            _tile('Linkedin', 'diegosoriarios', Icons.link),
          ],
        )
      ),
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20, 
      )),
      subtitle: Text(subtitle),
      trailing: Icon(
        icon,
        color: Colors.grey,
      ),
  );
}