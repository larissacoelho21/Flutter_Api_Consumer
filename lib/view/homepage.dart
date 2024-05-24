import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aqui está o appbar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Characters",
            style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 75, 163, 235),
                fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.black12,
                filled: true),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 5,
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (_, int index) {
                return Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                            "https://images.unsplash.com/photo-1615789591457-74a63395c990?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9tZXN0aWMlMjBjYXR8ZW58MHx8MHx8fDA%3D",
                            fit: BoxFit.cover),
                      ),
                      Text("My Little cat")
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
