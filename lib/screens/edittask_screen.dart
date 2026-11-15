import 'package:flutter/material.dart';

class EdittaskScreen extends StatelessWidget {
  const EdittaskScreen({super.key});

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

         // عنوان الصفحة والأيقونة
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit Task',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1D2433),
                  ),
                ),

                Icon(
                  Icons.edit_note,
                  size: 30,
                  color: Color(0xff1D2433),
                ),
              ],
            ),

            SizedBox(height: 25),

             // مربع كتابة المهمة
            Container(
              width: double.infinity,
              height: 110,
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Learn Flutter',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 25),

               // الزرين To Do و Done
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff9887F5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.pending_actions,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text('To Do', style: TextStyle(fontSize: 15), ),
                    ],
                  ),
                ),

                SizedBox(width: 25),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff76C499),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.task_alt,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text('Done', style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

               // زر حفظ التعديلات
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff39B5E5),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Save changes',
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
