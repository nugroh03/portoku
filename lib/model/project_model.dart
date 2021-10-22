class ProjectModel {
  final String title;
  final String image;
  final String description;
  final String link;

  ProjectModel(
      {required this.title,
      required this.image,
      required this.description,
      required this.link});
}

final List<ProjectModel> itemsProject = [
  ProjectModel(
      title: 'Clone Telegram',
      image: 'assets/Flutter.png',
      description: 'this is aplikasi clone telegram from flutter',
      link: 'https://github.com/nugroh03/clone_telegram'),
  ProjectModel(
      title: 'News Pocket',
      image: 'assets/newspocket.jpeg',
      description: 'Aplication news uptodate for your Information',
      link:
          'https://drive.google.com/file/d/19Oj85b0-2kYPBb22zS1NeVzTMwhL75Ej/view?usp=sharing'),
  ProjectModel(
      title: 'Weather App',
      image: 'assets/weatherapp.jpeg',
      description: 'Aplication prediction wheater from flutter',
      link:
          'https://drive.google.com/file/d/1NG-DU1u1nMjbgZ9b2e-FCNmWKTpTDCVc/view?usp=sharing'),
  ProjectModel(
      title: 'Gadget Solusi',
      image: 'assets/gadgetSolusi.png',
      description:
          'Gadget Solusi is an application for mobile phone service that can help pick up damaged devices and deliver them after the device has been repaired.',
      link:
          'https://play.google.com/store/apps/details?id=com.getech.gadgetsolusi'),
  ProjectModel(
      title: 'Multibagger',
      image: 'assets/multibagger.png',
      description:
          'Multibagger is an application for the stock learning community by Investor Academy Indonesia',
      link:
          'https://play.google.com/store/apps/details?id=com.getech.multibagger'),
  ProjectModel(
      title: 'Onboarding',
      image: 'assets/Flutter.png',
      description: 'welcome screen for your Aplication',
      link: 'https://github.com/nugroh03/On-Boarding-Ecommerce'),
];
