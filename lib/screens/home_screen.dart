import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled8/screens/tasks_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffFCE8E8),

        // الغلط العلوى
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Tudee' ,
          style: TextStyle(fontFamily: 'cherry'
              ,color: Colors.white),),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // مربع الترحيب الأبيض
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Ahmed',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Container(
                        width: 140,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xff76C499),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.task_alt,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text('0', style: TextStyle(color: Colors.white)),
                            Text('Done', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),

                      SizedBox(width: 25),

                      Container(
                        width: 140,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xff9887F5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.pending_actions,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text('0', style: TextStyle(color: Colors.white)),
                            Text('To-Do', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // المربع التاني
            Container(

              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No tasks for today!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 3),

                  Text(
                    'Tap the + button to add your first one.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // أيقونة إضافة مهمة
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Get.to(() => TasksScreen());
        },
        backgroundColor: Color(0xff3A9CCD),
        child: Icon(
          Icons.post_add,
          color: Colors.white,
          size: 30,
        ),
      ),

    );

  }
}
