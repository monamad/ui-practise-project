import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/text_style.dart';
import 'package:miniapp/core/widgets/gradient_scaffold.dart';
import 'package:miniapp/features/home/view/widgets/tabs.dart';
import 'widgets/custom_bottom_nav_bar.dart';
import '../data/models/anime_model.dart';
import '../data/models/character_model.dart';
import 'widgets/anime_poster_card.dart';
import 'widgets/character_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentBottomNavIndex = 0;

  final List<String> tabs = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
  ];

  final List<AnimeModel> animeList = [
    AnimeModel(
      title: 'Detective Conan',
      genre: 'Mystery',
      rating: 5.0,
      imageUrl: 'assets/p1.png',
    ),
    AnimeModel(
      title: 'Hunter x Hunter',
      genre: 'Adventure',
      rating: 5.0,
      imageUrl: 'assets/p2.png',
    ),

    AnimeModel(
      title: 'My Hero Academia',
      genre: 'Action',
      rating: 4.7,
      imageUrl: 'assets/p3.png',
    ),
    AnimeModel(
      title: 'Demon Slayer',
      genre: 'Action',
      rating: 4.9,
      imageUrl: 'assets/p4.png',
    ),
  ];

  final List<CharacterModel> charactersList = [
    CharacterModel(
      name: 'Goan Freecss',
      animeName: 'Hunter x Hunter',
      imageUrl: 'assets/c1.png',
    ),
    CharacterModel(
      name: 'Naruto Uzumaki',
      animeName: 'Naruto',
      imageUrl: 'assets/c2.png',
    ),
    CharacterModel(
      name: 'Luffy',
      animeName: 'One Piece',
      imageUrl: 'assets/c3.png',
    ),
    CharacterModel(
      name: 'Goku',
      animeName: 'Dragon Ball',
      imageUrl: 'assets/c4.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      defaultGradientStart: [Color(0xffdee3ff), Colors.white],
      backgroundImage: 'assets/Star1.png',
      imageTop: -55,
      imageRight: -160,
      imageWidth: 400,
      imageHeight: 300,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),

              SizedBox(
                height: 28.h,
                child: Text(
                  'Where Anime Comes Alive',
                  style: AppTextStyles.customblack24Bold,
                ),
              ),
              SizedBox(height: 28.h),

              SizedBox(height: 28.h, child: Tabs()),

              SizedBox(height: 21.h),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: animeList.length,
                  itemBuilder: (context, index) {
                    return AnimePosterCard(anime: animeList[index]);
                  },
                ),
              ),
              SizedBox(height: 13),
              SizedBox(
                height: 28.h,
                child: Text(
                  'Top Characters',
                  style: AppTextStyles.customblack24Bold,
                ),
              ),
              SizedBox(height: 25.h),

              SizedBox(
                height: 143.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: charactersList.length,
                  itemBuilder: (context, index) {
                    return CharacterCard(character: charactersList[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentBottomNavIndex,
        onTap: (index) {
          setState(() {
            _currentBottomNavIndex = index;
          });
        },
      ),
    );
  }
}
