import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCE8E8),

      // الغلط العلوى
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Tudee',
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
          ],
        ),
      ),

    );
  }
}
