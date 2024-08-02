import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey.shade500,
            child: const CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/3d/a0/97/3da097bfde49aef8e7b0aa00b7ac3ae1.png'),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Turg'unboyev\nTursunali",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            ' Passionate Flutter Developer\n'
            ' Enthusiastic Open Source Contributor\n',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '+1 years experience',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_pin, color: Colors.blue[900]),
              const SizedBox(width: 4),
              const Text(
                'Uzbekistan, Tashkent, Shayxontohir',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color(0xff000072),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 150,
                height: 55,
                child: ElevatedButton(
                  onPressed: () async {
                    const phoneNumber = 'tel: +998337670801';
                    if (await canLaunchUrlString(phoneNumber)) {
                      await launchUrlString(phoneNumber);
                    } else {
                      throw "Aloqaga chiqishda xatolik";
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff000072),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Text(
                      'Contact',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color(0xff000072),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
