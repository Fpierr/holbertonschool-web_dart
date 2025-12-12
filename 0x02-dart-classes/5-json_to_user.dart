class User {
  int id;
  String name;
  int age;
  double height;

  // Constructor
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  // Transformate object in Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Constructor static fromJson
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Method toString to display
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}
