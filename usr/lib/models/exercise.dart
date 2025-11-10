class Exercise {
  final String id;
  final String name;
  final String muscleGroup;
  final String difficulty; // Iniciante, Intermediário, Avançado
  final String description;
  final List<String> instructions;
  final int defaultReps;
  final int defaultSets;
  final String imageUrl;
  final List<String> targetMuscles;
  final List<String> equipment;

  Exercise({
    required this.id,
    required this.name,
    required this.muscleGroup,
    required this.difficulty,
    required this.description,
    required this.instructions,
    required this.defaultReps,
    required this.defaultSets,
    required this.imageUrl,
    required this.targetMuscles,
    required this.equipment,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'],
      name: json['name'],
      muscleGroup: json['muscleGroup'],
      difficulty: json['difficulty'],
      description: json['description'],
      instructions: List<String>.from(json['instructions']),
      defaultReps: json['defaultReps'],
      defaultSets: json['defaultSets'],
      imageUrl: json['imageUrl'],
      targetMuscles: List<String>.from(json['targetMuscles']),
      equipment: List<String>.from(json['equipment']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'muscleGroup': muscleGroup,
      'difficulty': difficulty,
      'description': description,
      'instructions': instructions,
      'defaultReps': defaultReps,
      'defaultSets': defaultSets,
      'imageUrl': imageUrl,
      'targetMuscles': targetMuscles,
      'equipment': equipment,
    };
  }
}