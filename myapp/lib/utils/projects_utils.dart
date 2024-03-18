class ProjectUtils {
  final String image;
  final String tittle;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.tittle,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectUtils> workProjectsUtils = [
  ProjectUtils(
      image: 'assets/projects/1.png',
      tittle: "MPStats",
      subtitle: "Backend + PostgresSQL + tgBot",
      webLink: "https://mpstats.ru/"),
  ProjectUtils(
      image: 'assets/projects/2.png',
      tittle: "AmeOli",
      subtitle: "Приложение для выездного медицинского персонала.",
      webLink: "https://apps.rustore.ru/app/com.example.ameoli"),
  ProjectUtils(
      image: 'assets/projects/3.png',
      tittle: "ИНСиС",
      subtitle: "Доработка и обслуживание мобильного приложения",
      webLink: "https://o.profintel.ru/dlja_doma/mobile/"),
  ProjectUtils(
      image: '/Users/glebandioleviosa/myapp/assets/projects/6.jpg',
      tittle: 'Workss',
      subtitle: "Экосистема для отслеживания продаж компании и мониторинга",
      webLink: "https://github.com/GlebMishagin/Workss")
];

List<ProjectUtils> hobbyProjectsUtils = [
  ProjectUtils(
      image: 'assets/projects/4.png',
      tittle: "WeatherApp",
      subtitle: "Приложение погоды как пэт проект в стилистике Glassmorphism",
      webLink: "https://github.com/GlebMishagin/WeatherApp"),
  ProjectUtils(
      image: 'assets/projects/5.png',
      tittle: "TgBot",
      subtitle:
          "Бот для поиска попудчиков в нескольких городах. работает как блаблакар",
      webLink: "https://t.me/podvezi_v_Kemerovo"),
  ProjectUtils(
      image: '/Users/glebandioleviosa/myapp/assets/projects/7.png',
      tittle: "UsurtApp",
      subtitle:
          "Перевод сайта экосисистемы универа в мобильную версию. В процессе разработки",
      webLink: "https://github.com/GlebMishagin/MobileUSURT"),
  ProjectUtils(
      image: '/Users/glebandioleviosa/myapp/assets/projects/8.png',
      tittle: "Parser",
      subtitle:
          "Собирает данные о размерах деталей по артиклю и заполняет эксель таблицу",
      webLink: "https://github.com/GlebMishagin/ParserForAutoAll"),
];
