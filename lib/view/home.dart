import 'package:doctor_app/class.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<DoctorsModel> doctorsList = [
    DoctorsModel(
        imgPath: 'assets/1.png',
        name: 'Vysakh Ck',
        specialization: 'Cardiologist'),
    DoctorsModel(
        imgPath: 'assets/2.png',
        name: 'Reshma',
        specialization: 'Cardiologist'),
    DoctorsModel(
        imgPath: 'assets/3.png',
        name: 'Rashid',
        specialization: 'Cardiologist'),
    DoctorsModel(
        imgPath: 'assets/4.png', name: 'Siva', specialization: 'Cardiologist'),
    DoctorsModel(
        imgPath: 'assets/5.png',
        name: 'Shiptha',
        specialization: 'Cardiologist'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    ' Hello, \n Dr.Melvin Aguirre',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.menu_rounded))
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                'Video Appoinments',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 22,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildTile(doctorsList[index]),
                itemCount: doctorsList.length,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListTile buildTile(DoctorsModel doctor) {
  return ListTile(
    onTap: () {},
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFACD8FD)),
          child: Image.asset(
            doctor.imgPath,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              doctor.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Text(
              doctor.specialization,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.videocam,
        color: Colors.green,
        size: 32,
      ),
    ),
  );
}
