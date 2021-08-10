part of 'widgets.dart';

class NewsCard1 extends StatelessWidget {
  final News news;
  final double width;
  const NewsCard1(this.news, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 120,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 111,
            width: 111,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: NetworkImage(news.imaUrl), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    style: blackFontStyle.copyWith(fontSize: 17),
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${news.category} | ${news.createdAt}",
                    style: greyFontStyle,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
