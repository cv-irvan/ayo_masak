part of 'importutils.dart';

class ProductFoodItem extends StatelessWidget {
  const ProductFoodItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
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
              SizedBox(
                child: Text(
                  dnama,
                  overflow: TextOverflow.ellipsis,
                  style: fontM.p2,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            height: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: Warna.outline,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(imgfood),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Warna.putih.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image(
                  width: 30,
                  height: 30,
                  image: Svg(
                    'assets/ic/heart.svg',
                    color: Warna.putih,
                  ),
                ),
              ),
            ),
          ),
          Text(
            namafood,
            overflow: TextOverflow.ellipsis,
            style: fontM.h2,
          ),
          const Spacer(),
          Text(
            cooktime,
            overflow: TextOverflow.ellipsis,
            style: fontS.s,
          ),
        ],
      ),
    );
  }
}
