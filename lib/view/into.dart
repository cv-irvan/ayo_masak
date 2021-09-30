part of 'importview.dart';

class Into extends StatefulWidget {
  const Into({Key? key}) : super(key: key);

  @override
  _IntoState createState() => _IntoState();
}

class _IntoState extends State<Into> {
  var fontM = FontMain();
  var fontS = FontSec();
  var fontP = FontPutih();
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
            fontP: fontP,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class Btn extends StatelessWidget {
  const Btn(
      {Key? key,
      required this.fontP,
      this.margin,
      required this.text,
      this.color})
      : super(key: key);

  final FontPutih fontP;
  final EdgeInsets? margin;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text.toString(),
          style: fontP.h3,
        ),
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            )),
      ),
    );
  }
}
