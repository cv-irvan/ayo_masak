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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stories,
                      style: fontM.h1,
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
                    return FadeInDown(
                        duration: Duration(milliseconds: (i + 1) * 300),
                        child: const StoriesItem());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Text(
                  trend,
                  style: fontM.h1,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 15,
                  itemBuilder: (BuildContext ctx, index) {
                    return FadeInDown(
                        duration: Duration(milliseconds: (index + 1) * 300),
                        child: const ProductFoodItem());
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
