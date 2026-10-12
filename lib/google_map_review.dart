import 'package:flutter/material.dart';

class GoogleMapReviewScreen extends StatelessWidget {
  const GoogleMapReviewScreen({super.key});

  Widget _buildButton({required IconData icon, required String title}) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        Text(title, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Text("Judul"), Text("Sub judul")],
          ),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.deepOrangeAccent),
              Text("41"),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image(
              image: const AssetImage("assets/bali2.jpg"),
              width: MediaQuery.of(context).size.width,
            ),
            _buildTitle(),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildButton(icon: Icons.call, title: "Call"),
                  _buildButton(icon: Icons.navigation, title: "Route"),
                  _buildButton(icon: Icons.share, title: "Share"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Lorem Ipsum is simply dummy text of the printing "
                "and typesetting industry. Lorem Ipsum is simply "
                "dummy text of the printing and typesetting industry.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
