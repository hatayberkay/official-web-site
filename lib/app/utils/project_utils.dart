class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Stock Report App',
    description:
        'It is stock report app for big companies, source code is also available, check below.',
    links: 'https://github.com/hatayberkay/UrunYonetimiStokTakip-MVC-Web_Form-Windows_Form',
  ),
  ProjectUtils(
    banners: 'assets/imgs/1.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'ui_design_bank_account_flutter',
    description:
        'This is a demostration about bank accont design, file is also available, check below.',
    links: 'https://github.com/hatayberkay/ui_design_bank_account_flutter',
  ),
  ProjectUtils(
    banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Food Recipes App',
    description:
        'This is Food Recipes app, source code is also available, check below.',
    links: 'https://github.com/hatayberkay/food_recipes_app_example',
  ),
  ProjectUtils(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Notes App',
    description:
        'It is totally basic notes app with MVC architecture, source code is also available, check below.',
    links: 'https://github.com/hatayberkay/notes_for_my_phone-',
  ),
];
