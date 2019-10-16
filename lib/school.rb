class School
  attr_accessor :name, :roster, :student, :grade
 
  def initialize(name)
    @name=name
    @roster = {}
    # @student= student
    # @grade= grade
  end 
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
    
  def sort
  @roster.each do |grade, student|
  @roster[grade].sort!
  end
  end
end