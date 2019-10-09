class Bootcamp
def initialize(name,slogan,student_capacity)
@name = name
@slogan = slogan
@student_capacity = student_capacity
@teachers = []
@students = []
@grades = Hash.new {|h,k|h[k] = []}
end

def name 
@name
end

def slogan
@slogan
end

def teachers
@teachers
end

def students
@students
end
def hire(teacher)
@teachers << teacher
end
def enroll(student)
@enrollment_success = true
if @students.length < @student_capacity && @enrollment_success
@students << student
@enrollment_success
else
@enrollment_success = false
end

end
def enrolled?(string)
return true if @students.include?(string)
false
end
def student_to_teacher_ratio
@students.length/teachers.length    
end

def add_grade(student, grade)

if @students.include?(student)
    @grades[student] << grade
    true
else
    false
end


end

def num_grades(student)
@grade = @grades[student]
@grade.length
end

def average_grade(student)
    return nil if !(@students.include?(student)) || @grades[student].empty?()  
@grades[student].sum/@grades[student].length   
end

end

