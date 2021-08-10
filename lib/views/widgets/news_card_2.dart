part of 'widgets.dart';

class NewsCard2 extends StatelessWidget {
  final News news;
  const NewsCard2(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 187,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(news.imaUrl), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  style: blackFontStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${news.category} | ${news.dateTime.dateAndTime}",
                  style: greyFontStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
