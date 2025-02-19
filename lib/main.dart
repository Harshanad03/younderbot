import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              const Text(
                'Hi, David 👋',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 300),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
              )
            ],
          ),
          Text(
            '   Explore the world',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w100, color: Colors.grey),
          ),
          SizedBox(height: 40),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search places',
              suffix: Icon(Icons.filter_list),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              const Text(
                'Popular places',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 200),
              Text("View all"),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      "Most Viewed",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  "Nearby",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Latest",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  // padding: EdgeInsets.only(left: 20),
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "data:image/jpeg;base64,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",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 250),
                    child: Icon(Icons.favorite, color: Colors.red, size: 30),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "data:image/jpeg;base64,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",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 250),
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(224, 134, 133, 133)),
                        child: Center(
                          child: Text(
                            'Mount Fuji, Tokyo',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: Colors.black,
            ),
            label: 'time',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'person',
          ),
        ],
      ),
    );
  }
}
