import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// نقطة بداية البرنامج
void main() {
  runApp(BusniessCardApp()); // تشغيل التطبيق
}

// الكلاس الرئيسي للتطبيق
class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // أساس التطبيق
      home: Scaffold(
        // الصفحة الرئيسية
        backgroundColor: const Color.fromARGB(
          255,
          84,
          164,
          235,
        ), // لون خلفية الصفحة
        body: Padding(
          padding: const EdgeInsets.only(top: 110), // مسافة من أعلى الصفحة
          child: Column(
            // ترتيب العناصر عمودياً
            children: [
              // ===== صورة البروفايل =====
              Container(
                padding: const EdgeInsets.all(4), // مسافة بين الصورة والإطار
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // جعل الشكل دائري
                  border: Border.all(
                    color: Color.fromARGB(255, 250, 249, 247), // لون الإطار
                    width: 4, // سمك الإطار
                  ),
                  boxShadow: [
                    // إضافة ظل للصورة
                    BoxShadow(
                      color: Color.fromARGB(255, 245, 244, 242),
                      blurRadius: 30, // نعومة الظل
                      offset: Offset(4, 4), // اتجاه الظل
                    ),
                  ],
                ),

                // قص الصورة بشكل دائري
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage(
                      'image/5974210457344085467.jpg',
                    ), // الصورة
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover, // جعل الصورة تملأ الدائرة
                  ),
                ),
              ),

              // ===== الاسم =====
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Alaa El Sayed",
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 250, 251), // لون النص
                    fontSize: 33, // حجم الخط
                    fontFamily: "BodoniModa", // الخط المخصص
                  ),
                ),
              ),

              // ===== المسمى الوظيفي =====
              Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Color.fromARGB(255, 236, 237, 238),
                  fontSize: 22,
                  fontFamily: "BodoniModa",
                ),
              ),

              // ===== خط فاصل =====
              Divider(
                color: Color.fromARGB(255, 129, 189, 243),
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),

              // ===== كارت رقم الهاتف =====
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15),

                      Icon(
                        FontAwesomeIcons.phone,
                        color: Color(0xFF70B7F5),
                        size: 30,
                      ),

                      Spacer(flex: 19),

                      Text(
                        "01126642124",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 118, 221),
                          fontSize: 18,
                          fontFamily: "LibreBaskerville",
                        ),
                      ),

                      Spacer(flex: 1),
                    ],
                  ),
                ),
              ),

              // ===== كارت الإيميل =====
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15),

                      Icon(
                        FontAwesomeIcons.envelope,
                        color: Color(0xFF70B7F5),
                        size: 30,
                      ),
                      SizedBox(width: 65),
                      Text(
                        "alaaelsayed2069@gmail.com",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 118, 221),
                          fontSize: 18,
                          fontFamily: "LibreBaskerville",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Facebook
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 30,
                          color: Color.fromARGB(255, 5, 9, 237),
                        ),
                      ),
                    ),

                    SizedBox(width: 20),

                    // LinkedIn
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                    ),

                    SizedBox(width: 20),

                    // WhatsApp
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                    ),

                    SizedBox(width: 20),

                    // Instagram
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
