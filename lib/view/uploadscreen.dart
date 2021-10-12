part of 'importview.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  double _currentSliderValue = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 500),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    per1,
                    style: fontM.h2,
                  ),
                ),
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 600),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: Get.width / 2.3,
                width: Get.width - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Warna.outline,
                    width: 1.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 80,
                      height: 80,
                      image: Svg(
                        'assets/ic/photo.svg',
                        color: Warna.outline,
                      ),
                    ),
                    Text(
                      addcoverphoto,
                      style: fontM.h3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      upto12mb,
                      style: fontS.s,
                    ),
                  ],
                ),
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 700),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text(
                  foodname,
                  style: fontM.h2,
                ),
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 700),
              child: const TextInput(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                hint: enterfoodname,
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 800),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text(
                  description,
                  style: fontM.h2,
                ),
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 800),
              child: const TextInputDesc(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                hint: enterdesciption,
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 900),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: RichText(
                  text: TextSpan(
                    text: cookduration,
                    style: fontM.h2,
                    children: [
                      TextSpan(text: inminutes, style: fontS.p1),
                    ],
                  ),
                ),
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 900),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      t10,
                      style: fontH.h2,
                    ),
                    Text(
                      t30,
                      style: fontH.h2,
                    ),
                    Text(
                      t60,
                      style: fontH.h2,
                    ),
                  ],
                ),
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 900),
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 60,
                divisions: 2,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            const Spacer(),
            FadeInDown(
              duration: const Duration(milliseconds: 1000),
              child: Btn(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                fontstyle: fontP.h3,
                text: next,
                ontap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
