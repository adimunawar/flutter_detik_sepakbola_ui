part of "pages.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<News> news = mockNews.sublist(1, 7);
    return Scaffold(
      backgroundColor: greyColor3,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/back_icon.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Container(
                                height: 21,
                                width: 121,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/logo.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Search_Icon.png'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/person.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 20,
                        margin: EdgeInsets.only(left: 12),
                        width: double.infinity,
                        child: CustomTabbar(
                          titles: [
                            'Sepakbola',
                            'Sport Higlight',
                            'Inggris',
                            'Jerman',
                            'Italia',
                            'Spanyol'
                          ],
                          selectedIndex: 0,
                        ))
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 105, bottom: 50),
            child: ListView(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: NewsCard2(mockNews[0])),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 12, right: 12, top: 12),
                  child: Column(
                      children: news
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: NewsCard1(
                                    e, MediaQuery.of(context).size.width - 145),
                              ))
                          .toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
