class SummonerRepository {
  Future<String> getSummoner() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return 'RodizioDeCoxinha';
  }
}
