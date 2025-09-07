import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Layout Demo'),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RecipeCard(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage()),
                );
              },
              child: const Text('Go to Detail Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  RecipeCard({Key? key}) : super(key: key);

  final TextStyle headerStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  final TextStyle subHeaderStyle = const TextStyle(
    fontSize: 14,
    color: Colors.black54,
  );

  final TextStyle labelStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  final TextStyle valueStyle = const TextStyle(fontSize: 12);

  Widget buildStarRating() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: List.generate(
            5,
            (index) => const Icon(Icons.star, color: Colors.black54, size: 16),
          ),
        ),
        const SizedBox(width: 8),
        const Text('170 Reviews', style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget buildInfoBox(IconData icon, String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20, color: Colors.black54),
          const SizedBox(height: 4),
          Text(label, style: labelStyle),
          Text(value, style: valueStyle),
        ],
      ),
    );
  }

  Widget buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildInfoBox(Icons.schedule, 'PREP:', '25 min'),
        buildInfoBox(Icons.timer, 'COOK:', '1 hr'),
        buildInfoBox(Icons.restaurant, 'FEEDS:', '4-6'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Strawberry Pavlova', style: headerStyle),
          const SizedBox(height: 8),
          const Text(
            'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
            'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 12),
          buildStarRating(),
          const SizedBox(height: 12),
          buildInfoRow(),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  Widget buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            height: 240,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.star, color: Colors.red),
                const SizedBox(width: 4),
                const Text('41'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButtonColumn(color, Icons.call, 'CALL'),
                buildButtonColumn(color, Icons.near_me, 'ROUTE'),
                buildButtonColumn(color, Icons.share, 'SHARE'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
