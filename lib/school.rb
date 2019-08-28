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
    b = Hash.new {|hash, key| hash[key] = []}
    @roster.values.each [|e| b[e[]]]
  end
end
    
    arr = [["a", 1], ["a", 2], [nil, 3], [nil, 4], ["b", 6], ["b", 8]]

h = Hash.new {|hash, key| hash[key] = []}
arr.each {|e| h[e[0]] << e[1]}
p h #=> {"a"=>[1, 2], nil=>[3, 4], "b"=>[6, 8]}
    
    

