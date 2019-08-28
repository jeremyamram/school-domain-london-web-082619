class School
  attr_reader :roster, :name
 
  def initialize(name)
    @name=name
    @roster = {}
  end
  
  def add_student(student, grade)
   if @roster.include?(grade)
     @roster[grade] << student
   else
    @roster[grade] = []
    @roster[grade] << student
  end
  
  def grade(grade)
    grades=[]
    @roster.each do |key,value|
      if key == grade
        grades << value
      end
    end
    return grades.flatten
  end
  
  def sort
   sorted_values={}
   @roster.each do |grade, student|
     sorted_values[grade]= student.sorted_values
   end
   return sorted_values
  end
end
    
    
    
    

