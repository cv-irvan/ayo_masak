part of 'importview.dart';

class Into extends StatefulWidget {
  const Into({Key? key}) : super(key: key);

  @override
  _IntoState createState() => _IntoState();
}

class _IntoState extends State<Into> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 25),
            width: Get.width,
            child: Image.asset(
              'assets/img/bg_into.png',
              fit: BoxFit.cover,
            ),
          ),
          const Spacer(),
          Text(
            startcooking,
            style: fontM.h1,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            letsjoinour,
            textAlign: TextAlign.center,
            style: fontS.p1,
          ),
          const Spacer(),
          Btn(
            text: getstarted,
            fontstyle: fontP.h3,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            ontap: () {
              Get.to(() => const Register());
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
