import 'package:flutter/material.dart';
import 'controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 30,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // العنوان
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'مسبحتي',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // الوصف
              const Text(
                'اجعل لسانك رطباً بذكر الله',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 150),

              const Text(
                'الذكر الحالي',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'سبحان الله',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff176B57),
                ),
              ),

              const SizedBox(height: 50),

              // العداد
              Obx(
                    () => Text(
                  '${controller.count.value} / 33',
                  style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff176B57),
                  ),
                ),
              ),

              const SizedBox(height: 100),

              // زر تسبيح
              SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff176B57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                  child: const Text(
                    'تسبيح',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // زر تصفير العداد
              SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    controller.reset();
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE8F3ED),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                  child: const Text(
                    'تصفير العداد',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff176B57),
                    ),
                  ),
                ),
              ),

              const Spacer(),
// إجمالي التسبيحات
              O-bx(() => Text(
                  'إجمالي التسبيحات: ${controller.total.value}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}