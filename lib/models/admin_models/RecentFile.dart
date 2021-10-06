class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/images/mairie.jpg",
    title: "Mairie",
    date: "01-09-2021",
    size: "50.5mb",
  ),
  RecentFile(
    icon: "assets/images/police.jpg",
    title: "Police",
    date: "27-09-2021",
    size: "45.0mb",
  ),
  RecentFile(
    icon: "assets/images/justice.jpg",
    title: "Justice",
    date: "23-09-2021",
    size: "75.5mb",
  ),
  RecentFile(
    icon: "assets/images/bko.jpg",
    title: "ONT",
    date: "21-09-2021",
    size: "30.5mb",
  )
];
