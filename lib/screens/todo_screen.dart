import 'package:flutter/material.dart';
import 'home_screen.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // Controller لأخذ الاسم من المستخدم
  final TextEditingController nameController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCE9E9),

      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Tudee'),
      ),

      body: Padding(
        padding:  EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 40),

            const Text(
              "Let's get started",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'What should we call you?',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 15),

            // حقل إدخال الاسم
            TextField(
              controller: nameController,

              decoration: InputDecoration(
                hintText: 'Your name',
                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                // عند الضغط على Save
                onPressed: () {
                  // أخذ الاسم
                  String userName =
                  nameController.text.trim();

                  // التأكد أن الاسم ليس فارغًا
                  if (userName.isNotEmpty) {
                    // الانتقال إلى الصفحة الرئيسية
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(
                          userName: userName,
                        ),
                      ),
                    );
                  }
                },

                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}