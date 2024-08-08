import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_controller.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    authController controller = Get.put(authController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 40),
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100 , right: 250),
              child: Text('SignUp' ,style: TextStyle(fontSize: 30 , color: Color(0xff0D2841), fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 150,),
            TextField(
              controller: controller.txtEmail,
              decoration: InputDecoration(
                  hintText: 'Email',
                  helperText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.txtName,
              decoration: InputDecoration(
                  hintText: 'Password',
                  helperText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
                onTap: () {
                  controller.signUp(
                      controller.txtEmail.text, controller.txtName.text);
                },
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xff0D2841),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text('Create Account' , style: TextStyle(color: Colors.white,fontSize: 25),),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
