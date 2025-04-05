import 'package:flutter/material.dart';

class AddCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // خلفية بيضاء
          Container(color: Colors.white),

          // شريط الإشعارات كصورة
          Positioned(
            top: 10,
            right: 16,
            child: Image.asset(
              'assets/Notifii.png',
              width: 24,
              height: 24,
            ),
          ),

          // نص "Add Card"
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              'Add Card',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          // صورة البطاقة
          Positioned(
            top: 55,
            left: 20,
            right: 20,
            child: Image.asset('assets/Group.png', fit: BoxFit.cover),
          ),

          // حقل الاسم كصورة
          Positioned(
            top: 250,
            left: 20,
            right: 20,
            child: Image.asset('assets/Field.png', fit: BoxFit.cover),
          ),

          // حقل رقم البطاقة كصورة مع أيقونة
          Positioned(
            top: 320,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/carnum.png', fit: BoxFit.cover),
                ),
              ],
            ),
          ),

          // حقول Expiry و CVC كصورة
          Positioned(
            top: 390,
            left: 20,
            right: 20,
            child:
                Image.asset('assets/Frame 1984077828.png', fit: BoxFit.cover),
          ),

          // زر الدفع كصورة
          Positioned(
            top: 455,
            left: 20,
            right: 20,
            child: Image.asset('assets/Component 8.png', fit: BoxFit.cover),
          ),

          // شريط التنقل السفلي كصورة
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/Bottom Nav.png', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
