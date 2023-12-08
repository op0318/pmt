
enum Categetory{newtrainee,oldtrainee}

class empmodel
{
  final String name;
  final String empid;
  final String project;
  final String Designation;
  final String Categeory;
  empmodel({
    required this.empid,
    required this.name,
    required this.Categeory,
    required this.Designation,
    required this.project});

}