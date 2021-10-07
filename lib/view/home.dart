part of 'importview.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List lScreen = [
    const HomeScreen(),
    Container(
      color: Warna.pri,
    ),
    Container(
      color: Warna.putih,
    ),
    Container(
      color: Warna.sec,
    ),
    Container(
      color: Warna.priText,
    ),
  ];

  List<Widget> bIcon = [
    Image(
      width: 30,
      height: 30,
      image: Svg(
        'assets/ic/home.svg',
        color: Warna.priText,
      ),
    ),
    Image(
      width: 30,
      height: 30,
      image: Svg(
        'assets/ic/list-search.svg',
        color: Warna.priText,
      ),
    ),
    const SizedBox(),
    Image(
      width: 30,
      height: 30,
      image: Svg(
        'assets/ic/bell.svg',
        color: Warna.priText,
      ),
    ),
    Image(
      width: 30,
      height: 30,
      image: Svg(
        'assets/ic/user.svg',
        color: Warna.priText,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: lScreen.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: bIcon
                .map((data) => InkWell(
                      onTap: () {
                        _onItemTapped(bIcon.indexOf(data));
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: _selectedIndex == bIcon.indexOf(data) ? 50 : 30,
                        width: _selectedIndex == bIcon.indexOf(data) ? 50 : 30,
                        decoration: BoxDecoration(
                          color: _selectedIndex == bIcon.indexOf(data)
                              ? Warna.pri
                              : null,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: data,
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Warna.putih,
        onPressed: () {},
        child: Image(
          width: 30,
          height: 30,
          image: Svg(
            'assets/ic/plus.svg',
            color: Warna.priText,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
