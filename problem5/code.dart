import 'dart:io';


void main() {
  Employees manager = Employees(2,'Mohamed Ali', 'Project Manager','Mohamedali.com','0178973693');
  Employees GraphicDesigner = Employees(16,'Hend Osama', 'Graphic Designer','Hendosama.com','01476382468');
  Employees Media = Employees(9,'Mai Ibrahem', 'Media','Maibrahem.com','01894797598');


  Project project = Project(4,'Social Media Campaign', manager);
  Client client = Client(5,'Ahmed Hady','Ahmedhady.com','0183929833',project);

  List<Task> task = [Task(4, 'Create Ad', 'In Progress', manager, project,'11/4'),
                     Task(5, 'Design Logo', 'In Progress', GraphicDesigner, project,'15/4'),
                     Task(6, 'Create Post', 'Finish', Media, project,'10/4')];

  manager.display();
  GraphicDesigner.display();
  Media.display();
  client.display();
  project.display();
  for(Task t in task)
      t.display();
}

class Employees {
  String name;
  String role;
  int id;
  String phone;
  String email;
  Employees( this.id,this.name, this.role, this.email,this.phone);

  void display() {
    print('Employee ID: $id, Name: $name, Role: $role, E-mail: $email, Phone: $phone');
  }
}

class Client {
  String name;
  int id;
  String email;
  String phone;
  Project client_project;

  Client(this.id,this.name,this.email,this.phone, this.client_project);

  void display() {
    print('Client ID: $id, Client: $name, E-mail: $email, Phone: $phone, Client Project: ${client_project.name}');
  }
}

class Project {
  int id;
  String name;
  Employees manager;

  Project(this.id,this.name, this.manager);

  void display() {
    print('Project ID: $id, Project: $name, Managed by: ${manager.name}');
  }
}

class Task {
  int id;
  String title;
  String status;
  Employees assignedTo;
  Project project;
  String deadline;

  Task(this.id, this.title, this.status, this.assignedTo, this.project,this.deadline);

  void display() {
    print('Task ID: $id, Task: $title, Status: $status, Assigned to: ${assignedTo.name}, Deadline: $deadline');
  }
}
