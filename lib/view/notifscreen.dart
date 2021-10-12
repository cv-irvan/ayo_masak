part of 'importview.dart';

class NotifScreen extends StatefulWidget {
  const NotifScreen({Key? key}) : super(key: key);

  @override
  _NotifScreenState createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(20),
            height: 100,
            child: Text(
              notif,
              style: fontM.h1,
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(0),
              itemCount: 3,
              itemBuilder: (context, i) {
                return const SizedBox(
                  height: 20,
                );
              },
              separatorBuilder: (context, i) {
                return FadeInRight(
                  duration: Duration(milliseconds: (i + 1) * 300),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
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
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dnama,
                              style: fontM.h3,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              followingyou,
                              style: fontS.s,
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 100,
                          height: 40,
                          child: Btn(
                            fontstyle: fontP.h3,
                            text: 'Follow',
                            ontap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
