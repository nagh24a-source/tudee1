import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'edittask_screen.dart';

class AddTaskScreen extends StatelessWidget {
   AddTaskScreen({super.key});

  TextEditingController taskController = TextEditingController();
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

            // عنوان الصفحة والأيقونة
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add Task',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1D2433),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 10),
                    child: Icon(
                      Icons.note_add,
                      size: 25,
                      color: Color(0xff1D2433),
                    ),
                  ),
                ],
              ),
            ),

            // المسافة بين العنوان والمربع
            SizedBox(height: 30),

            // مربع كتابة المهمة
            Container(
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: taskController,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'What needs to be done?' , hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 30),

              // زر الحفظ
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => EdittaskScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff39A9DB),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}
