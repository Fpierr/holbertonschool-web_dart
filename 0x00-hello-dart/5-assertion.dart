void main(List<String> args) {
  var n = int.parse(args[0]);
  assert(n >= 80, 'The score must be bigger or equal to 80');
  print('You Passed\n');
}
