void outer(String name, String id) {
  String inner() {
    List<String> parts = name.split(' ');
    String firstName = parts[0];
    String lastName = parts[1];

    String formatted = '${lastName[0]}.$firstName';

    return 'Hello Agent $formatted your id is $id';
  }

  print(inner());
}
