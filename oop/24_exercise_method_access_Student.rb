class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    self.grade > other_student.grade ? true : false
  end

  protected

  attr_reader :grade
end

joe = Student.new('Joe', 87)
# puts joe.grade
# => NoMethodError: private method `grade' called for #<Student:0x00000000021c2e90 @name="Joe", @grade=87>


bob = Student.new('Bob', 56)
puts "Well done!" if joe.better_grade_than?(bob)
# => Well done!