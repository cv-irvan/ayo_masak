part of 'importview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Row(
                  children: [
                    Text(
                      stories,
                      style: fontM.h2,
                    ),
                    Image(
                      width: 20,
                      height: 20,
                      image: Svg(
                        'assets/ic/plus.svg',
                        color: Warna.priText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: Get.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, i) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                  separatorBuilder: (context, i) {
                    return Container(
                      width: 110,
                      decoration: BoxDecoration(
                        color: Warna.outline,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
