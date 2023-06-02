part of octane.letterpress.ds;

enum LPFontFamily {
  headers('Fraunces_Standard'),
  body('Fraunces_Soft');

  final String name;
  const LPFontFamily(this.name);
}

enum LPColorTheme {
  background_grey(OCTTColor.grey800),
  standard_grey(OCTTColor.grey200),
  hyperlink_purple(OCTTColor.purple800),
  inline_code_cyan(OCTTColor.blue800),
  lyrics_quote_orange(OCTTColor.orange800),
  ;

  final Color color;
  const LPColorTheme(this.color);
}

class LPFont {
  final TextStyle textStyle;

  LPFont.postClassTitle()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.headers.name,
          color: LPColorTheme.standard_grey.color,
          fontSize: 120,
          fontWeight: FontWeight.w100,
          height: 1.2,
        );

  LPFont.title()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.headers.name,
          color: LPColorTheme.standard_grey.color,
          fontSize: 160,
          fontWeight: FontWeight.w500,
          height: 1.2,
        );

  LPFont.header1()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.headers.name,
          color: LPColorTheme.standard_grey.color,
          fontSize: 120,
          fontWeight: FontWeight.w700,
        );

  LPFont.header2()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.headers.name,
          color: LPColorTheme.standard_grey.color,
          fontSize: 100,
          fontWeight: FontWeight.w600,
        );

  LPFont.header3()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.headers.name,
          color: LPColorTheme.standard_grey.color,
          fontSize: 80,
          fontWeight: FontWeight.w500,
        );

  LPFont.body()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.body.name,
          color: LPColorTheme.standard_grey.color,
          fontSize: 26,
          fontWeight: FontWeight.w200,
          letterSpacing: 1,
        );

  LPFont.bodyItalic()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.body.name,
          color: LPColorTheme.standard_grey.color,
          fontSize: 26,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.italic,
          letterSpacing: 1,
        );

  LPFont.hyperlink()
      : textStyle = TextStyle(
          fontFamily: LPFontFamily.body.name,
          color: LPColorTheme.hyperlink_purple.color,
          fontSize: 26,
          fontWeight: FontWeight.w300,
          letterSpacing: 1,
        );
}
