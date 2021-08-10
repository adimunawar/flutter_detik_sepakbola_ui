part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  // final Function(int) ontap;
  CustomTabbar({required this.selectedIndex, required this.titles});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: titles
                .map((e) => Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(e,
                          style: (titles.indexOf(e) == 0)
                              ? blackFontStyle.copyWith(
                                  fontSize: 14,
                                  color: mainColor,
                                  fontWeight: FontWeight.w700)
                              : greyFontStyle.copyWith(
                                  fontSize: 14,
                                  color: greyColor1,
                                  fontWeight: FontWeight.w700)),
                    ))
                .toList()));
  }
}
