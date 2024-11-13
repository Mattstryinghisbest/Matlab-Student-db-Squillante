% Author Name: Matthew Squillante
% Email: Squill94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: midterm
% Date: 11/13/2024
% Main script to demonstrate the functionality
db = StudentDatabase();  % Create a new StudentDatabase object

% Adding sample students
db = db.addStudent(Student(1, 'Sam', 18, 3.2, 'Chemistry'));
db = db.addStudent(Student(2, 'Matt', 21, 3.5, 'Physics'));
db = db.addStudent(Student(3, 'Lucius', 19, 3.9, 'Mechanical Engineering'));

% Performing searches
student = db.findStudentByID(1);  % Find student by ID
if ~isempty(student)
    student.displayInfo();  % Display student information
end

studentsCH = db.getStudentsByMajor('Chemistry');  % Get students by major
for i = 1:length(studentsCH)
    studentsCH(i).displayInfo();  % Display information for each student
end

% Generating visualizations
visualizeData(db);  % Call the function to visualize data

% Saving and loading database
db.saveToFile('StudentDatabase.mat');  % Save the database to a file
db = db.loadFromFile('StudentDatabase.mat');  % Load the database from a file
