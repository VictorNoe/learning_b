import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _InfoUser(),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () async => await FirebaseAuth.instance.signOut(),
                child: const Text('Cerrar Sesión')
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Datos del usuario'),
          Text('Datos del usuario'),
          Text('Datos del usuario'),
        ],
      ),
    );
  }
}

class _Options extends StatelessWidget {
  const _Options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(Icons.favorite, color: Colors.red),
          SizedBox(width: 15),
          Icon(Icons.messenger_outline),
          SizedBox(width: 15),
          Icon(Icons.send_outlined),
          Spacer(),
          Icon(Icons.bookmark_border),
        ],
      ),
    );
  }
}

class _InfoUser extends StatelessWidget {
  const _InfoUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            foregroundColor: Colors.white,
            child: const Text('VC'),
          ),
          const SizedBox(width: 10),
          const Column(
            children: [
              Text(
                '__VictorNoe__',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'Hace 10 minutos',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
