class OnboardingModel {
  final String backgroundImage;
  final String image;
  final String title;
  final String desc;
  final String buttonText;
  OnboardingModel(
      {required this.title,
        required this.image,
        required this.backgroundImage,
        required this.buttonText,
        required this.desc});
}

List<OnboardingModel>  onboardings = [
  OnboardingModel(title: "Donuts",

      image: "assets/images/dounts.png",
      backgroundImage: "assets/images/Onboard1.png",
      buttonText: "Next", desc: "Made by hand, from scratch \n          with love") ,
  OnboardingModel(title: "Piece of cake",

      image: "assets/images/cake.png",
      backgroundImage: "assets/images/Onboard22.png",
      buttonText: "Next", desc: "Made by hand, from scratch \n          with love") ,
  OnboardingModel(title: "Milkshake",

      image: "assets/images/Group 239097.png",
      backgroundImage: "assets/images/onboard3.png",
      buttonText: "Get started", desc: "Made by hand, from scratch \n    with love") ,
];