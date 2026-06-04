enum Skill { FLUTTER, DART, PYTHON, OTHER }

class Address {
  String street;
  String city;
  int zipCode;

  Address(this.street, this.city, this.zipCode);

  String toString() {
    return "Street: $street, City: $city, Zip Code: $zipCode";
  }
}

class Employee {
  static const double baseSalary = 40000;
  final String _name;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  Employee(this._name, this._skills, this._address, this._yearsOfExperience);

  Employee.mobileDeveloper(String name, Address address, int yearsOfExperience)
    : this._name = name,
      this._skills = [Skill.FLUTTER, Skill.DART],
      this._address = address,
      this._yearsOfExperience = yearsOfExperience;

  String get name => _name;
  Address get address => _address;
  List<Skill> get skills => _skills;
  int get yearsOfExperience => _yearsOfExperience;

  double computeSalary() {
    double salary = baseSalary;

    int experienceBonus = yearsOfExperience * 2000;

    double skillBonus = 0;

    for (var skill in _skills) {
      if (skill == Skill.FLUTTER) {
        skillBonus += 5000;
      } else if (skill == Skill.DART) {
        skillBonus += 3000;
      } else if (skill == Skill.PYTHON) {
        skillBonus += 2000;
      } else if (skill == Skill.OTHER) {
        skillBonus += 1000;
      }
    }

    double totalSalary = salary + skillBonus + experienceBonus;

    return totalSalary;
  }

  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
    print("Address = $address");
    print("Skill = $skills");
    print("Years of Experience = $yearsOfExperience");
    print("Final Salary = \$${computeSalary()}");
    print("\n");
  }
}

void main() {
  var address1 = Address("National Road 2", "Takhmau", 168);
  var emp1 = Employee.mobileDeveloper('Moni', address1, 10);
  emp1.printDetails();

  var address2 = Address('Norodom Blvd', 'Phnom Penh', 170);
  var emp2 = Employee('Reak', [Skill.FLUTTER, Skill.PYTHON], address2, 5);
  emp2.printDetails();
}
