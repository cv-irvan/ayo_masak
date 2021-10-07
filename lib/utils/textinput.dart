part of 'importutils.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    this.margin,
    this.controller,
    this.icon,
    this.hint,
    this.passwordtype,
    this.fill,
    this.fillColor,
    this.isDense,
  }) : super(key: key);

  final EdgeInsets? margin;
  final TextEditingController? controller;
  final Widget? icon;
  final String? hint;
  final bool? passwordtype;
  final bool? fill;
  final bool? isDense;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        obscureText: passwordtype ?? false,
        controller: controller,
        decoration: InputDecoration(
          isDense: isDense,
          hintText: hint,
          hintStyle: fontS.p1,
          prefixIcon: icon,
          filled: fill,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Warna.outline,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Warna.pri,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}

class TextInputDesc extends StatelessWidget {
  const TextInputDesc({
    Key? key,
    this.margin,
    this.controller,
    this.hint,
  }) : super(key: key);

  final EdgeInsets? margin;
  final TextEditingController? controller;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        controller: controller,
        maxLines: 4,
        decoration: InputDecoration(
          hintText: enterdesciption,
          hintStyle: fontS.p1,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Warna.outline,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Warna.pri,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class OtpForm extends StatefulWidget {
  OtpForm(
      {Key? key,
      required this.textEditingController,
      required this.formKey,
      required this.currentText,
      required this.error})
      : super(key: key);

  TextEditingController textEditingController;
  GlobalKey<FormState> formKey;
  bool error;
  String currentText;

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget().formKey,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: PinCodeTextField(
            appContext: context,
            pastedTextStyle: TextStyle(
              color: Colors.green.shade600,
              fontWeight: FontWeight.bold,
            ),
            length: 4,
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            validator: (v) {
              if (v!.length < 3) {
                return " ";
              } else {
                return null;
              }
            },
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(20),
              fieldHeight: 80,
              fieldWidth: 80,
              activeFillColor: widget().error ? Colors.white : Colors.white,
              activeColor: Warna.outline,
              selectedFillColor: Colors.white,
              selectedColor: Warna.pri,
              inactiveColor: Warna.outline,
              inactiveFillColor: Colors.white,
            ),
            cursorColor: Warna.outline,
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            controller: widget().textEditingController,
            keyboardType: TextInputType.number,
            textStyle: fontM.f34,
            onCompleted: (v) {
              widget().formKey.currentState!.validate();
            },
            onChanged: (value) {
              setState(() {
                widget().currentText = value;
              });
            },
            beforeTextPaste: (text) {
              return true;
            },
          )),
    );
  }
}
