import 'package:flutter/material.dart';
import 'chat.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Messenger',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          // (video call)
          const Icon(
            Icons.camera,
            color: Colors.white,
          ),
          const SizedBox(width: 30),
          // (audio call)
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          const SizedBox(width: 30),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('Option 1'),
              ),
              const PopupMenuItem(
                child: Text('Option 2'),
              ),
              const PopupMenuItem(
                child: Text('Option 3'),
              ),
            ],
          ),
          const SizedBox(width: 100),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: const Text('Zehra'),
              subtitle: const Text("Hey, how are you"),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/img5.png')),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Fize'),
              subtitle: const Text("😂😀🤩🤗"),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('Lets Do it')),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Amber'),
              subtitle: const Text("Thankyooowwwwwwww"),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/img7.png')),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Mahnoor'),
              subtitle: const Text("hello!"),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/img8.png')),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Friend'),
              subtitle: const Text(
                  "whatsuppp??"),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/img9.png')),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
