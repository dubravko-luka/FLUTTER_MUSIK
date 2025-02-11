import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 122, // 120 + 2 (viền mỗi bên 1px)
                height: 122,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.shade200,
                  child: SvgPicture.network(
                    'https://tunescape.vercel.app/images/logos/93x93.svg',
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Tên của bạn',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                'email@example.com',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 32),
              _buildProfileOption(Icons.settings, Colors.blue, 'Cài đặt', () {
                // Handle Settings
              }),
              _buildProfileOption(Icons.help, Colors.green, 'Hỗ trợ', () {
                // Handle Help
              }),
              _buildProfileOption(Icons.logout, Colors.red, 'Đăng xuất', () {
                // Handle Logout
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileOption(IconData icon, Color color, String text, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: color),
          title: Text(text, style: TextStyle(color: Colors.white)),
          onTap: onTap,
        ),
        Divider(),
      ],
    );
  }
}
