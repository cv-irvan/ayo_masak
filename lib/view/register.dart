part of 'importview.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              welcomeback,
              style: fontM.h1,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              pleaseenteryouraccount,
              style: fontS.p2,
            ),
            const Spacer(),
            TextInput(
              hint: emailornumber,
              icon: Image(
                width: 30,
                height: 30,
                image: Svg(
                  'assets/ic/mail.svg',
                  color: Warna.priText,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextInput(
              hint: password,
              passwordtype: true,
              icon: Image(
                width: 30,
                height: 30,
                image: Svg(
                  'assets/ic/lock.svg',
                  color: Warna.priText,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                forgetpassword,
                style: fontM.p2,
              ),
            ),
            const Spacer(),
            Btn(
              text: login,
              fontstyle: fontP.h3,
              ontap: () {
                Get.to(() => const Otp());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              orcontinuewith,
              style: fontS.p2,
            ),
            const SizedBox(
              height: 20,
            ),
            Btn(
              text: google,
              fontstyle: fontP.h3,
              color: Warna.sec,
              ontap: () {
                Get.to(() => const Otp());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: donthaveaccount,
                style: fontM.p2,
                children: [
                  TextSpan(text: signup, style: fontH.h3),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
