part of 'importview.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image(
                      width: 30,
                      height: 30,
                      image: Svg(
                        'assets/ic/share.svg',
                        color: Warna.priText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Warna.outline,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: NetworkImage(imgprofil),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    dnama,
                    style: fontM.h2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 500),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              d15,
                              style: fontM.h2,
                            ),
                            Text(
                              recipes,
                              style: fontS.s,
                            ),
                          ],
                        ),
                      ),
                      FadeInDown(
                        duration: const Duration(milliseconds: 600),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              d782,
                              style: fontM.h2,
                            ),
                            Text(
                              following,
                              style: fontS.s,
                            ),
                          ],
                        ),
                      ),
                      FadeInDown(
                        duration: const Duration(milliseconds: 700),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              d1852,
                              style: fontM.h2,
                            ),
                            Text(
                              follower,
                              style: fontS.s,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 10,
              color: Warna.outline.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                yourpost,
                style: fontM.h2,
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
    );
  }
}
