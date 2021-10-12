part of 'importview.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 500),
              child: Text(
                cekyouremail,
                style: fontM.h1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 600),
              child: Text(
                ayomasaksentcodetoemail,
                style: fontS.p2,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 700),
              child: OtpForm(
                  textEditingController: textEditingController,
                  formKey: formKey,
                  currentText: currentText,
                  error: hasError),
            ),
            const Spacer(),
            FadeInDown(
              duration: const Duration(milliseconds: 800),
              child: Text(
                codeexpiredon + '03:12',
                style: fontM.p2,
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 900),
              child: Btn(
                margin: const EdgeInsets.all(20),
                fontstyle: fontP.h3,
                text: verify,
                ontap: () {
                  Get.to(() => const Home());
                },
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 1000),
              child: Btn(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                fontstyle: fontP.h3,
                text: sendagain,
                color: Warna.sec,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
