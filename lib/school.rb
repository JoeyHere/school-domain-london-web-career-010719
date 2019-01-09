class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name
  attr_accessor :roster

  def add_student(student, grade)
    roster[grade].nil? ? @roster[grade] = [student] : @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, students| students.sort!}
    @roster
  end

end
