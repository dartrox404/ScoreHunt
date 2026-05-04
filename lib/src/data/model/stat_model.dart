class StatModel {
  final String player;
  final int score, bowls, sixes, fours;
  final double sr;
  StatModel({
    required this.bowls,
    required this.fours,
    required this.player,
    required this.score,
    required this.sixes,
    required this.sr,
  });
}

List<StatModel> matchstatsics = [
  StatModel(
    bowls: 15,
    fours: 3,
    player: 'Baber Azam',
    score: 45,
    sixes: 2,
    sr: 175.05,
  ),
  StatModel(
    bowls: 25,
    fours: 5,
    player: 'David Warner',
    score: 85,
    sixes: 5,
    sr: 250.5,
  ),
  StatModel(
    bowls: 30,
    fours: 2,
    player: 'Shadbad Khan',
    score: 15,
    sixes: 1,
    sr: 140.48,
  ),
  StatModel(
    bowls: 2,
    fours: 0,
    player: 'Mitchel Starc',
    score: 12,
    sixes: 2,
    sr: 100.0,
  ),
];
final List<String> navicons = [
  "Live",
  "Statstics",
  "Scoreboard",
  "Commentary",
  "Animations",
];
final List<String> overdetails = ["6", "W", "0", "6", "6", "W", "WD"];
