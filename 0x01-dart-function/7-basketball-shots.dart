int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int totalA = teamA['Free throws']! * 1 +
      teamA['2 pointers']! * 2 +
      teamA['3 pointers']! * 3;

  int totalB = teamB['Free throws']! * 1 +
      teamB['2 pointers']! * 2 +
      teamB['3 pointers']! * 3;

  if (totalA > totalB) return 1;
  if (totalA < totalB) return 2;
  return 0;
}
