part of 'importview.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> sugest = [
    'sushi',
    'seafood',
    'sandwich',
    'chiken',
    'fried rice'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 120,
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextInput(
                    hint: search,
                    isDense: true,
                    icon: Image(
                      width: 30,
                      height: 30,
                      image: Svg(
                        'assets/ic/search.svg',
                        color: Warna.priText,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image(
                  width: 30,
                  height: 30,
                  image: Svg(
                    'assets/ic/adjustments-horizontal.svg',
                    color: Warna.priText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            color: Warna.outline.withOpacity(0.5),
          ),
          FadeInDown(
            duration: const Duration(milliseconds: 500),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        width: 30,
                        height: 30,
                        image: Svg(
                          'assets/ic/history.svg',
                          color: Warna.secText,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        namafood,
                        style: fontM.p1,
                      ),
                      const Spacer(),
                      Image(
                        width: 30,
                        height: 30,
                        image: Svg(
                          'assets/ic/arrow-up-left.svg',
                          color: Warna.secText,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            color: Warna.outline.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              namafood,
              style: fontM.h2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              children: sugest
                  .map(
                    (data) => FadeInDown(
                      duration: Duration(milliseconds: (data.length + 1) * 100),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                        decoration: BoxDecoration(
                          color: Warna.outline,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(data),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
