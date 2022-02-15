def input_students
  puts "Please enter the names of the students, followed by the cohort you are in"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chop
  puts "What cohort are you in?"
  cohort = gets.chop
  # while the name is not empty, repeat this code
  while !name.empty?  do
    # add the student hash to the array
    students << {:name => name, :cohort => cohort}
    if students.count < 2 
      puts "Now we have #{students.count} student"
    elsif students.count > 1 
      puts "Now we have #{students.count} students"
    end
    # get another name from the user
    if cohort.empty?
      cohort << "February"
    end
    name = gets.chop
    cohort = gets.chop
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(200)
  puts "-------------".center(200)
end

def print(students)
  students.each.with_index(1) do |student, index|
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)".center(200) if student[:name].chars.count < 12
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(200)
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)