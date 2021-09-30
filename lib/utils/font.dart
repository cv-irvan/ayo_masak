part of 'importutils.dart';

class AppThemeData {
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Warna.putih,
    primaryColor: Warna.pri,
    primaryColorDark: Warna.pri,
    errorColor: Warna.sec,
    hoverColor: Colors.white54,
    dividerColor: Warna.outline,
    fontFamily: GoogleFonts.inter().fontFamily,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      color: Warna.putih,
      iconTheme: IconThemeData(color: Warna.priText),
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
    colorScheme:
        ColorScheme.light(primary: Warna.pri, primaryVariant: Warna.pri),
    cardTheme: const CardTheme(color: Colors.white),
    iconTheme: IconThemeData(color: Warna.priText),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Warna.putih),
    textTheme: TextTheme(
      headline1: GoogleFonts.inter(
          fontSize: 22, fontWeight: FontWeight.w600, color: Warna.priText),
      headline2: GoogleFonts.inter(
          fontSize: 17, fontWeight: FontWeight.w600, color: Warna.priText),
      headline3: GoogleFonts.inter(
          fontSize: 15, fontWeight: FontWeight.w600, color: Warna.priText),
      headline4: GoogleFonts.inter(fontSize: 17, color: Warna.priText),
      headline5: GoogleFonts.inter(fontSize: 15, color: Warna.priText),
      headline6: GoogleFonts.inter(fontSize: 12, color: Warna.priText),
    ),
    primaryTextTheme: TextTheme(
      headline1: GoogleFonts.inter(
          fontSize: 22, fontWeight: FontWeight.w600, color: Warna.putih),
      headline2: GoogleFonts.inter(
          fontSize: 17, fontWeight: FontWeight.w600, color: Warna.putih),
      headline3: GoogleFonts.inter(
          fontSize: 15, fontWeight: FontWeight.w600, color: Warna.putih),
      headline4: GoogleFonts.inter(fontSize: 17, color: Warna.putih),
      headline5: GoogleFonts.inter(fontSize: 15, color: Warna.putih),
      headline6: GoogleFonts.inter(fontSize: 12, color: Warna.putih),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.linux: ZoomPageTransitionsBuilder(),
          TargetPlatform.macOS: ZoomPageTransitionsBuilder(),
        }),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Warna.priText,
    highlightColor: Warna.priText,
    errorColor: Warna.sec,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      color: Warna.priText,
      iconTheme: IconThemeData(color: Warna.putih),
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    primaryColor: Warna.pri,
    dividerColor: Warna.outline,
    primaryColorDark: Warna.priText,
    textSelectionTheme: TextSelectionThemeData(cursorColor: Warna.putih),
    hoverColor: Warna.secText,
    fontFamily: GoogleFonts.inter().fontFamily,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Warna.priText),
    textTheme: TextTheme(
      headline1: GoogleFonts.inter(
          fontSize: 22, fontWeight: FontWeight.w600, color: Warna.priText),
      headline2: GoogleFonts.inter(
          fontSize: 17, fontWeight: FontWeight.w600, color: Warna.priText),
      headline3: GoogleFonts.inter(
          fontSize: 15, fontWeight: FontWeight.w600, color: Warna.priText),
      headline4: GoogleFonts.inter(fontSize: 17, color: Warna.priText),
      headline5: GoogleFonts.inter(fontSize: 15, color: Warna.priText),
      headline6: GoogleFonts.inter(fontSize: 12, color: Warna.priText),
    ),
    primaryTextTheme: TextTheme(
      headline1: GoogleFonts.inter(
          fontSize: 22, fontWeight: FontWeight.w600, color: Warna.putih),
      headline2: GoogleFonts.inter(
          fontSize: 17, fontWeight: FontWeight.w600, color: Warna.putih),
      headline3: GoogleFonts.inter(
          fontSize: 15, fontWeight: FontWeight.w600, color: Warna.putih),
      headline4: GoogleFonts.inter(fontSize: 17, color: Warna.putih),
      headline5: GoogleFonts.inter(fontSize: 15, color: Warna.putih),
      headline6: GoogleFonts.inter(fontSize: 12, color: Warna.putih),
    ),
    cardTheme: CardTheme(color: Warna.secText),
    iconTheme: IconThemeData(color: Warna.putih),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.dark(
            primary: Warna.priText,
            onPrimary: Warna.secText,
            primaryVariant: Warna.priText)
        .copyWith(secondary: Warna.putih),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.linux: ZoomPageTransitionsBuilder(),
          TargetPlatform.macOS: ZoomPageTransitionsBuilder(),
        }),
  );
}

class FontMain {
  final TextStyle h1 = GoogleFonts.inter(
      fontSize: 22, fontWeight: FontWeight.w600, color: Warna.priText);
  final TextStyle h2 = GoogleFonts.inter(
      fontSize: 17, fontWeight: FontWeight.w600, color: Warna.priText);
  final TextStyle h3 = GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w600, color: Warna.priText);
  final TextStyle p1 = GoogleFonts.inter(fontSize: 17, color: Warna.priText);
  final TextStyle p2 = GoogleFonts.inter(fontSize: 15, color: Warna.priText);
  final TextStyle s = GoogleFonts.inter(fontSize: 12, color: Warna.priText);
}

class FontSec {
  final TextStyle h1 = GoogleFonts.inter(
      fontSize: 22, fontWeight: FontWeight.w600, color: Warna.secText);
  final TextStyle h2 = GoogleFonts.inter(
      fontSize: 17, fontWeight: FontWeight.w600, color: Warna.secText);
  final TextStyle h3 = GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w600, color: Warna.secText);
  final TextStyle p1 = GoogleFonts.inter(fontSize: 17, color: Warna.secText);
  final TextStyle p2 = GoogleFonts.inter(fontSize: 15, color: Warna.secText);
  final TextStyle s = GoogleFonts.inter(fontSize: 12, color: Warna.secText);
}

class FontPutih {
  final TextStyle h1 = GoogleFonts.inter(
      fontSize: 22, fontWeight: FontWeight.w600, color: Warna.putih);
  final TextStyle h2 = GoogleFonts.inter(
      fontSize: 17, fontWeight: FontWeight.w600, color: Warna.putih);
  final TextStyle h3 = GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w600, color: Warna.putih);
  final TextStyle p1 = GoogleFonts.inter(fontSize: 17, color: Warna.putih);
  final TextStyle p2 = GoogleFonts.inter(fontSize: 15, color: Warna.putih);
  final TextStyle s = GoogleFonts.inter(fontSize: 12, color: Warna.putih);
}
