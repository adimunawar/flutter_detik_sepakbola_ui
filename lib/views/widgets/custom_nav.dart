part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo_grey.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Home",
                  style: greyFontStyle.copyWith(
                      fontSize: 10, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/layanan_grey.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text("Layanan",
                    style: greyFontStyle.copyWith(
                        fontSize: 10, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Container(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/kategori_blue.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text("Kategori",
                    style: greyFontStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: mainColor))
              ],
            ),
          ),
          Container(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/vidio_grey.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text("Vidio",
                    style: greyFontStyle.copyWith(
                        fontSize: 10, fontWeight: FontWeight.w700))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
