import 'package:flutter/material.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2), // Horizontal and Vertical offset
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '00:00',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              Expanded(
                child: Slider(
                  value: 0.3, // Đảm bảo không dùng const nếu giá trị không cố định
                  onChanged: (value) => {
                    //
                  }, // Hàm callback không null
                  inactiveColor: Colors.grey,
                  activeColor: Colors.white, // Màu đỏ cho thanh slider
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '05:23',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.shuffle, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.skip_previous, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.play_circle_filled, color: Colors.white, size: 50),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.skip_next, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.repeat, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 20), // Spacing from the bottom
        ],
      ),
    );
  }
}
