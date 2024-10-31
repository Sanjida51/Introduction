import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Personal info
  final String name = "Sanjida Akter";
  final String email = "sanjidaakter.iiuc.ctg.bd@gmail.com";
  final String age = "21";
  final String location = "Chittagong, Bangladesh";
  final String nationality = "Bangladeshi";

  // Skills and Experience
  final List<String> skills = [
    "Content Writing",
    "Microsoft Office",
    "Graphic Design",
    "Video Editing",
    "Canva",
    "C/C++",
    "JavaScript",
    "Web Development"
  ];

  final List<String> experience = [
    "Junior Executive, Content Writing at Requin BD",
    "Newsletter Sub-editor at IEEE CS IIUC SBC",
    "Second Runner-up, Inter-University Tech Fest 2023",
    "Leader of Team Shunya for NASA Space Apps Challenge 2024"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Resume of Sanjida Akter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Personal Info
              buildSectionTitle("Personal Info", Colors.teal),
              buildInfoCard(),

              const SizedBox(height: 20),

              // Centered Image
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100), // Circular shape
                  child: Image.asset(
                    'assets/Sanjida Akter_International Islamic University Chittagong.jpeg',
                    width: 150, // Adjust size as needed
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Skills Section
              buildSectionTitle("Skills", Colors.orange),
              buildGridSection(skills, Colors.orange.shade200),

              const SizedBox(height: 20),

              // Experience Section
              buildSectionTitle("Experience", Colors.blue),
              buildGridSection(experience, Colors.blue.shade200),
            ],
          ),
        ),
      ),
    );
  }

  // Section title with customized color
  Widget buildSectionTitle(String title, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }

  // Personal info card for a structured layout
  Widget buildInfoCard() {
    return Card(
      color: Colors.teal.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildInfoRow("Name", name),
            buildInfoRow("Email", email),
            buildInfoRow("Age", age),
            buildInfoRow("Location", location),
            buildInfoRow("Nationality", nationality),
          ],
        ),
      ),
    );
  }

  // Info row with adjusted padding and divider
  Widget buildInfoRow(String label, String value) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
              Text(
                value,
                style: const TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
        const Divider(color: Colors.grey, height: 1),
      ],
    );
  }

  // Skill and experience grids with cards for each item
  Widget buildGridSection(List<String> items, Color color) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: items.map((item) => buildSkillCard(item, color)).toList(),
    );
  }

  // Card style for skill and experience items
  Widget buildSkillCard(String text, Color color) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
