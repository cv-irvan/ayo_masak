part of 'importutils.dart';

class Btn extends StatelessWidget {
  const Btn(
      {Key? key,
      required this.fontstyle,
      this.margin,
      required this.text,
      this.color,
      this.ontap})
      : super(key: key);

  final TextStyle fontstyle;
  final EdgeInsets? margin;
  final String? text;
  final Color? color;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ontap,
        child: Text(
          text.toString(),
          style: fontstyle,
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
