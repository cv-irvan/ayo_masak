part of 'importutils.dart';

class StoriesItem extends StatelessWidget {
  const StoriesItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: Warna.outline,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(imgstory),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Warna.priText.withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration:
                  BoxDecoration(color: Warna.pri, shape: BoxShape.circle),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Warna.outline,
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: NetworkImage(imgprofil),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 65,
                      child: Text(
                        dnama,
                        overflow: TextOverflow.ellipsis,
                        style: fontP.s,
                      ),
                    ),
                    SizedBox(
                      width: 65,
                      child: Text(
                        djam,
                        overflow: TextOverflow.ellipsis,
                        style: fontP.s1,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
